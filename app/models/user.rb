class User < ApplicationRecord
  belongs_to :sepi_programa
  belongs_to :consejero
  belongs_to :coordinador_nombre
  belongs_to :tipos_usuario
end
