class User < ApplicationRecord

  #Filtros de filterrific
         filterrific(
           available_filters: [
             :search_query,
             :with_sepi_programa_id
           ]
         )

  paginates_per 30
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :sepi_programa
  belongs_to :consejero
  belongs_to :coordinador_nombre
  belongs_to :tipos_usuario

  has_many :agregar_asignaturas, dependent: :destroy
  has_many :baja_asignaturas, dependent: :destroy
  has_many :baja_programas, dependent: :destroy
  has_many :cambiar_asignaturas, dependent: :destroy
  has_many :cambiar_consejeros, dependent: :destroy
  has_many :cambiar_temas, dependent: :destroy
  has_many :comite_registros, dependent: :destroy
  has_many :cursar_asignaturas, dependent: :destroy
  has_many :examen_graduados, dependent: :destroy
  has_many :receso_semestres, dependent: :destroy
  has_many :tesis_registros, dependent: :destroy
  has_many :revocacion_registros, dependent: :destroy

  before_save :assign_role, :asignar_area

  def assign_role
    self.tipos_usuario = TiposUsuario.find_by tipo: "Alumno" if self.tipos_usuario.nil?
  end

  def asignar_area
    self.area = Area.find_by(nombre: "Mecánica").nombre if self.sepi_programa.nombre == "Especialización en Ingeniería Térmica"
    self.area = Area.find_by(nombre: "Sistemas").nombre if self.sepi_programa.nombre == "Especialización en Ingeniería de Sistemas"
    self.area = Area.find_by(nombre: "Eléctrica").nombre if self.sepi_programa.nombre == "Maestría en Ciencias en Ingeniería Eléctrica"
    self.area = Area.find_by(nombre: "Electrónica").nombre if self.sepi_programa.nombre == "Maestría en Ciencias en Ingeniería Electrónica"
    self.area = Area.find_by(nombre: "Mecánica").nombre if self.sepi_programa.nombre == "Maestría en Ciencias en Ingeniería Mecánica"
    self.area = Area.find_by(nombre: "Sistemas").nombre if self.sepi_programa.nombre == "Maestría en Ciencias en Ingeniería de Sistemas"
    self.area = Area.find_by(nombre: "Telecomunicaciones").nombre if self.sepi_programa.nombre == "Maestría en Ciencias en Ingeniería de Telecomunicaciones"
    self.area = Area.find_by(nombre: "Eléctrica").nombre if self.sepi_programa.nombre == "Doctorado en Ciencias en Ingeniería Eléctrica"
    self.area = Area.find_by(nombre: "Mecánica").nombre if self.sepi_programa.nombre == "Doctorado en Ciencias en Ingeniería Mecánica"
    self.area = Area.find_by(nombre: "Sistemas").nombre if self.sepi_programa.nombre == "Doctorado en Ciencias en Ingeniería de Sistemas"
  end

  def admin?
    self.tipos_usuario.tipo == "Administrador"
  end

  def control_escolar?
    self.tipos_usuario.tipo == "Control escolar"
  end

  def coordinador?
    self.tipos_usuario.tipo == "Coordinador"
  end

  def consejero?
    self.tipos_usuario.tipo == "Consejero"
  end

  def alumno?
    self.tipos_usuario.tipo == "Alumno"
  end

  def nombre_paterno_materno
    "#{nombre} #{paterno} #{materno}"
  end

  def paterno_materno_nombre
    "#{paterno} #{materno} #{nombre}"
  end

  #Definición de los filtros para filterrific
  scope :search_query, lambda { |query|

    # Filtra a los usuarios por nombre o apellido paterno
    return nil  if query.blank?

    # Condiciones del query divididas en palabras separadas y en minúsculas
    terms = query.downcase.split(/\s+/)

    # Reemplaza "*" con "%" para búsquedas con comodin,
    # liga '%', quita los '%' duplicados
    terms = terms.map { |e|
      (e.gsub('*', '%') + '%').gsub(/%+/, '%')
    }

    # Configura el numero de condiciones OR proporcionados (provision)
    # como argumentos de interpolación. Ajustar si se cambian el
    # número de condiciones OR.
    num_or_conds = 2

    where(
      terms.map { |term|
        "(LOWER(users.nombre) LIKE ? OR LOWER(users.paterno) LIKE ?)"
      }.join(' AND '),
      *terms.map { |e| [e] * num_or_conds }.flatten
    )
  }

  scope :with_sepi_programa_id, lambda { |sepi_programa_ids|
    # Se filtra a los usuarios dependiendo del role_id dado
    where(sepi_programa_id: [*sepi_programa_ids])
  }

end
