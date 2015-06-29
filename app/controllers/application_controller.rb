class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :set_locale

private

  def set_locale
    I18n.locale = params[:locale] if params[:locale].present?

    # other way to set a user's locale:
    #  current_user.locale  --> user/profile param
    # request.subdomain
    # request.env["HTTP_ACCEPT_LANGUAGE] -> may be good for translation testing/proofing
    # request.remote_ip -> if we setup a geo-location for user's browser
  end

end
