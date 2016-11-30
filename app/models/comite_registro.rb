class ComiteRegistro < ApplicationRecord
  validates :user_id, presence: true
  belongs_to :user

  after_initialize :init
  def init
    self.estado ||= 'Pendiente' if self.has_attribute? :estado
    self.valida_consejero ||= false if self.has_attribute? :valida_consejero
    self.valida_coordinador ||= false if self.has_attribute? :valida_coordinador
  end

  def self.electrica_comite_registros(inicio, fin)
    self.joins(:user).where("comite_registros.created_at BETWEEN ? AND ? AND area = ? AND estado = ?", "#{inicio}", "#{fin}", "Eléctrica", "Procede realizar trámite ante la SIP").order("comite_registros.created_at DESC")
  end

  def self.electronica_comite_registros(inicio, fin)
    self.joins(:user).where("comite_registros.created_at BETWEEN ? AND ? AND area = ? AND estado = ?", "#{inicio}", "#{fin}", "Electrónica", "Procede realizar trámite ante la SIP").order("comite_registros.created_at DESC")
  end

  def self.mecanica_comite_registros(inicio, fin)
    self.joins(:user).where("comite_registros.created_at BETWEEN ? AND ? AND area = ? AND estado = ?", "#{inicio}", "#{fin}", "Mecánica", "Procede realizar trámite ante la SIP").order("comite_registros.created_at DESC")
  end

  def self.sistemas_comite_registros(inicio, fin)
    self.joins(:user).where("comite_registros.created_at BETWEEN ? AND ? AND area = ? AND estado = ?", "#{inicio}", "#{fin}", "Sistemas", "Procede realizar trámite ante la SIP").order("comite_registros.created_at DESC")
  end

  def self.telecom_comite_registros(inicio, fin)
    self.joins(:user).where("comite_registros.created_at BETWEEN ? AND ? AND area = ? AND estado = ?", "#{inicio}", "#{fin}", "Telecomunicaciones", "Procede realizar trámite ante la SIP").order("comite_registros.created_at DESC")
  end

end
