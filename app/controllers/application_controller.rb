class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :first_name, :last_name, :gender, :tribe])
    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :first_name, :last_name, :gender, :tribe])
  end
end
