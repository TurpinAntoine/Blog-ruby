class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?


  before_action :set_locale

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  def default_url_options
    { locale: I18n.locale }
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :email, :password, :password_confirmation])

  end


  def page_not_found
    respond_to do |format|
      format.html { render template: 'errors/not_found_error', layout: 'layouts/application', status: 404 }
      format.all  { render nothing: true, status: 404 }
    end
  end

  def server_error
    respond_to do |format|
      format.html { render template: 'errors/internal_server_error', layout: 'layouts/error', status: 500 }
      format.all  { render nothing: true, status: 500}
    end
  end


end