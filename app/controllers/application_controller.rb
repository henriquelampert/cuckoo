class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  # TODO: fix for JSON!
  # protect_from_forgery with: :exception

  # TODO: replace with Devise's authenticate_user!
  before_filter :set_current_user, :set_time_zone

  def set_current_user
    @current_user = User.last # for playing with the user.
  end

  def settings
    @settings ||= Setting.first_or_create
  end
  helper_method :settings

  protected

  def flash_message(message, model)
    I18n.t(message, scope: :flash_messages, model: model.model_name.human)
  end

  def set_time_zone
    Time.zone = settings.time_zone
  end

end

