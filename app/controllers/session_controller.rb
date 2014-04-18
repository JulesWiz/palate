class SessionController < ApplicationController

  def new
  end

  def create
    # @user.id = User.find_by(id: session[:user_id])
    # redirect_to api_url
  end

  private

  def user_params
    params.require(:user).permit(:id, :email, :password)
  end
end