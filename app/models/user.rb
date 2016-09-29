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
  has_many :baja_programas, dependent: :destroy
  has_many :cambiar_asignaturas, dependent: :destroy
  has_many :cambiar_consejeros, dependent: :destroy

  def admin?
    self.tipos_usuario.tipo == "Administrador"
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

end
