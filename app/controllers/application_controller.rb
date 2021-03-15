class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  protected
  alias_method :current_user, :current_cliente

 def configure_permitted_parameters
   devise_parameter_sanitizer.permit(
     :sign_up, keys: [:nombre, :cifNif, :direccion, :localidad, :cp,
       :provincia, :telefono])
   devise_parameter_sanitizer.permit(
     :account_update, keys:  [:nombre, :cifNif, :direccion, :localidad, :cp,
     :provincia, :telefono])
 end

 rescue_from CanCan::AccessDenied do
    flash[:error] = '¡Accesso denegado!'
    redirect_to root_url
  end

  def after_sign_in_path_for(resource)
    menus_path # your path
  end

end
