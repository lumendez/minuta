class TiposUsuario < ApplicationRecord
  belongs_to :user

  def self.options_for_select
    order('LOWER(tipo)').map { |e| [e.tipo, e.id] }
  end
end
