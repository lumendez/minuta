class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = "No tiene autorización para esta acción!"
    if current_user.tipos_usuario.tipo == 'Coordinador'
      redirect_to coordinadores_path
    elsif current_user.tipos_usuario.tipo == 'Consejero'
      redirect_to consejero_casos_path
    elsif current_user.tipos_usuario.tipo == 'Control escolar'
      redirect_to ce_usuarios_path
    elsif current_user.tipos_usuario.tipo == 'Alumno'
      redirect_to alumnos_path
    end
  end

  def after_sign_in_path_for(resource)
    if current_user.tipos_usuario.tipo == 'Coordinador'
     coordinadores_path
   elsif current_user.tipos_usuario.tipo == 'Consejero'
     consejero_casos_path
   elsif current_user.tipos_usuario.tipo == 'Control escolar'
     ce_usuarios_path
    else
      alumnos_path
    end
  end

end
