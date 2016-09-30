class RecesoSemestre < ApplicationRecord
  validates :user_id, presence: true
  belongs_to :user

  after_initialize :init
  def init
    self.estado ||= 'Pendiente' if self.has_attribute? :estado
  end
end
