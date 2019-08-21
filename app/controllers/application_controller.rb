class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
      update_attrs = [:first_name, :last_name, :email, :photo, :host, :phone_number, :photo_cache, :password, :password_confirmation, :current_password]
      devise_parameter_sanitizer.permit :sign_up, keys: update_attrs
      devise_parameter_sanitizer.permit :account_update, keys: update_attrs
  end

end
