class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

      def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :description, :email, :password])
          # devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:first_name, :last_name, :description, :email, :password) }
          # devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:first_name, :last_name, :description, :email, :password, :current_password) }
      end
end
