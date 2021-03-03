class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

 protected

 def configure_permitted_parameters
   devise_parameter_sanitizer.permit(
     :sign_up, keys: [:nombre, :cifNif, :direccion, :localidad, :cp,
       :provincia, :telefono])
   devise_parameter_sanitizer.permit(
     :account_update, keys:  [:nombre, :cifNif, :direccion, :localidad, :cp,
     :provincia, :telefono])
 end
 
end
