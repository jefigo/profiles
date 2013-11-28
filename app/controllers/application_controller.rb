class ApplicationController < ActionController::Base
  before_filter :authenticate_user!

  protect_from_forgery

  helper_method :current_user, :user_signed_in?


  def authenticate_user!
    unless user_signed_in?
      redirect_to '/auth/google_apps'
    end
  end

  private
  def current_user
    @current_user ||= User.find_by_id(session[:user_id]) if user_signed_in?
  end

  def user_signed_in?
    session[:user_id] && User.find_by_id(session[:user_id])
  end
end
