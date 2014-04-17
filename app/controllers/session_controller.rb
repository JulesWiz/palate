class SessionController < ApplicationController

  def new
  end

  def create
    user = @user
    session[:user_id] = user.id
    redirect_to root_url
  end

  private

  def user_params
    params.require(:user).permit(:id, :email, :password)
  end
end