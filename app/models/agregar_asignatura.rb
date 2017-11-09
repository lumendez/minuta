class AgregarAsignatura < ApplicationRecord
  validates :user_id, presence: true
  belongs_to :user

  filterrific(
    available_filters: [
      :sorted_by,
      :search_query,
      :with_agregar_asignatura
    ]
  )

  after_initialize :init
  def init
    self.estado ||= 'Pendiente' if self.has_attribute? :estado
    self.valida_consejero ||= false if self.has_attribute? :valida_consejero
    self.valida_coordinador ||= false if self.has_attribute? :valida_coordinador
  end

  def self.electrica_agregar_asignaturas(inicio, fin)
    self.joins(:user).where("agregar_asignaturas.created_at BETWEEN ? AND ? AND area = ? AND estado = ?", "#{inicio}", "#{fin}", "Eléctrica", "Procede realizar trámite ante la SIP").order("agregar_asignaturas.created_at DESC")
  end

  def self.electronica_agregar_asignaturas(inicio, fin)
    self.joins(:user).where("agregar_asignaturas.created_at BETWEEN ? AND ? AND area = ? AND estado = ?", "#{inicio}", "#{fin}", "Electrónica", "Procede realizar trámite ante la SIP").order("agregar_asignaturas.created_at DESC")
  end

  def self.mecanica_agregar_asignaturas(inicio, fin)
    self.joins(:user).where("agregar_asignaturas.created_at BETWEEN ? AND ? AND area = ? AND estado = ?", "#{inicio}", "#{fin}", "Mecánica", "Procede realizar trámite ante la SIP").order("agregar_asignaturas.created_at DESC")
  end

  def self.sistemas_agregar_asignaturas(inicio, fin)
    self.joins(:user).where("agregar_asignaturas.created_at BETWEEN ? AND ? AND area = ? AND estado = ?", "#{inicio}", "#{fin}", "Sistemas", "Procede realizar trámite ante la SIP").order("agregar_asignaturas.created_at DESC")
  end

  def self.telecom_agregar_asignaturas(inicio, fin)
    self.joins(:user).where("agregar_asignaturas.created_at BETWEEN ? AND ? AND area = ? AND estado = ?", "#{inicio}", "#{fin}", "Telecomunicaciones", "Procede realizar trámite ante la SIP").order("agregar_asignaturas.created_at DESC")
  end

  scope :search_query, lambda { |query|

    # Filters students whose name or email matches the query
    return nil  if query.blank?

    # condition query, parse into individual keywords
    terms = query.downcase.split(/\s+/)

    # replace "*" with "%" for wildcard searches,
    # append '%', remove duplicate '%'s
    terms = terms.map { |e|
      (e.gsub('*', '%') + '%').gsub(/%+/, '%')
    }

    # configure number of OR conditions for provision
    # of interpolation arguments. Adjust this if you
    # change the number of OR conditions.
    num_or_conds = 3

    where(
      terms.map { |term|
        "(LOWER(agregar_asignatura.user.nombre) LIKE ? OR LOWER(agregar_asignatura.user.paterno) LIKE ? OR LOWER(agregar_asignatura.user.materno) LIKE ?)"
      }.join(' AND '),
      *terms.map { |e| [e] * num_or_conds }.flatten
    )
  }

  scope :with_agregar_asignatura, lambda {
  where(
    'EXISTS (SELECT 1 from agregar_asignaturas WHERE user.id = agregar_asignaturas.user_id)'
  )
}

  scope :sorted_by, lambda { |sort_option|
  # extract the sort direction from the param value.
  direction = (sort_option =~ /desc$/) ? 'desc' : 'asc'
  case sort_option.to_s
  when /^created_at_/
    # Simple sort on the created_at column.
    # Make sure to include the table name to avoid ambiguous column names.
    # Joining on other tables is quite common in Filterrific, and almost
    # every ActiveRecord table has a 'created_at' column.
    order("agregar_asignaturas.created_at #{ direction }")
  when /^apellido_/
    # Simple sort on the name colums
    order("LOWER(agregar_asignaturas.user.paterno) #{ direction }, LOWER(agregar_asignaturas.user.materno) #{ direction }")
  else
    raise(ArgumentError, "Opción no válida: #{ sort_option.inspect }")
  end
}

  def self.options_for_sorted_by
    [
      ['Fecha de registro (más recientes primero)', 'created_at_desc'],
      ['Fecha de registro (más viejos primero)', 'created_at_asc'],
      ['Apellido (a-z)', 'apellido_asc']
    ]
  end

end
