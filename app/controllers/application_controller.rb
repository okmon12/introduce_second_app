class ApplicationController < ActionController::Base
  before_action :authenticate_user!, only: [:index]
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :basic_auth


  private
  def configure_permitted_parameters
     devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname,:name])
  end
  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == 'monmon' && password == '2222'
    end
  end
end
