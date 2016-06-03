class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :first_name, :last_name, :password, :password_configuration])


    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :first_name, :last_name, :password, :password_configuration])

  end
end
