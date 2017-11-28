class SepiPrograma < ApplicationRecord

  def self.options_for_select
    order('LOWER(nombre)').map { |e| [e.nombre, e.id] }
  end
  
end
