class User < ApplicationRecord
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
  #has_many :tipos_usuarios, dependent: :destroy

  before_save :assign_role

  def assign_role
    self.tipos_usuario = TiposUsuario.find_by tipo: "Alumno" if self.tipos_usuario.nil?
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

end
