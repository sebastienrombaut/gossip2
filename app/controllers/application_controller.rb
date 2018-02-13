class ApplicationController < ActionController::Base
  before_action :authenticate_moussaillon! #pour bloquer les pages si tu n'es pas logé 
  protect_from_forgery with: :exception
  before_action :sanitize_devise_params, if: :devise_controller?



  def sanitize_devise_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :sign_up_code])
 
  end

  def after_sign_in_path_for(resource)
    ragots_path
  end
end
