class SessionsController < ApplicationController
  skip_before_action :authenticate_user!, only: :create
  skip_before_action :verify_authenticity_token

  def create
    auth = request.env["omniauth.auth"]
    user = User.find_by_email(auth["info"]["email"]) || User.create_with_omniauth(auth)
    session[:user_id] = user.id
    redirect_to root_url
  end
end