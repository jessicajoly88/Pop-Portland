DAY_1 = "September 16, 2015"
DAY_2 = "September 17, 2015"
DAY_3 = "September 18, 2015"
DAY_4 = "September 19, 2015"


class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protect_from_forgery with: :exception

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :name
  end
end
