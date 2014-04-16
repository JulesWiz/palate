class UsersController < ApplicationController

  def index
    render text: 'Welcome to Palate'
  end

  def new
    render text: 'This is the new page for user'
  end

end