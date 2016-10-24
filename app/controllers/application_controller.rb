class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = "No tiene autorización para esta acción!"
    redirect_to root_url
  end

  #def after_sign_in_path_for(resource)
    #if user.role == 'admin'
      #admin_root_path
    #else
      #user_root_path
    #end
  #end
end
