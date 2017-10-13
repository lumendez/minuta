class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:user).permit(:nombre, :boleta, :sepi_programa_id, :consejero_id,
      :coordinador_nombre_id, :tipos_usuario_id, :email, :user_name, :password,
      :password_confirmation, :area, :paterno, :materno)
  end

  def account_update_params
    params.require(:user).permit(:nombre, :boleta, :sepi_programa_id, :consejero_id,
      :coordinador_nombre_id, :tipos_usuario_id, :email, :user_name, :password,
      :password_confirmation, :current_password, :area, :paterno, :materno)
  end
end
