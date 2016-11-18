class CambiarAsignatura < ApplicationRecord
  validates :user_id, presence: true
  belongs_to :user

  after_initialize :init
  def init
    self.estado ||= 'Pendiente' if self.has_attribute? :estado
    self.valida_consejero ||= false if self.has_attribute? :valida_consejero
    self.valida_coordinador ||= false if self.has_attribute? :valida_coordinador
  end

  def self.electrica_cambiar_asignaturas(inicio, fin)
    self.joins(:user).where("cambiar_asignaturas.created_at BETWEEN ? AND ? AND area = ? AND estado = ?", "#{inicio}", "#{fin}", "Eléctrica", "Procede realizar trámite ante la SIP").order("cambiar_asignaturas.created_at DESC")
  end

  def self.electronica_cambiar_asignaturas(inicio, fin)
    self.joins(:user).where("cambiar_asignaturas.created_at BETWEEN ? AND ? AND area = ? AND estado = ?", "#{inicio}", "#{fin}", "Electrónica", "Procede realizar trámite ante la SIP").order("cambiar_asignaturas.created_at DESC")
  end

  def self.mecanica_cambiar_asignaturas(inicio, fin)
    self.joins(:user).where("cambiar_asignaturas.created_at BETWEEN ? AND ? AND area = ? AND estado = ?", "#{inicio}", "#{fin}", "Mecánica", "Procede realizar trámite ante la SIP").order("cambiar_asignaturas.created_at DESC")
  end

  def self.sistemas_cambiar_asignaturas(inicio, fin)
    self.joins(:user).where("cambiar_asignaturas.created_at BETWEEN ? AND ? AND area = ? AND estado = ?", "#{inicio}", "#{fin}", "Sistemas", "Procede realizar trámite ante la SIP").order("cambiar_asignaturas.created_at DESC")
  end

  def self.telecom_cambiar_asignaturas(inicio, fin)
    self.joins(:user).where("cambiar_asignaturas.created_at BETWEEN ? AND ? AND area = ? AND estado = ?", "#{inicio}", "#{fin}", "Telecomunicaciones", "Procede realizar trámite ante la SIP").order("cambiar_asignaturas.created_at DESC")
  end

end
