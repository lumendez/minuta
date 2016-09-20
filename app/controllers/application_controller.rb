class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = "No tiene autorización para esta acción!"
    redirect_to root_url
  end
end
