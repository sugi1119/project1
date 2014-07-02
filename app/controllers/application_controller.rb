class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :authenticate_user

  private
  def authenticate_user
    if session[:practioner_id].present?
      @current_user = Practioner.where(:id => session[:practioner_id]).first
    end

    if @current_user.nil?
      session[:practioner_id] = nil
    end
  end
end
