class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :sepi_programa
  belongs_to :consejero
  belongs_to :coordinador_nombre
  belongs_to :tipos_usuario

  has_many :baja_asignaturas, dependent: :destroy  
end
