class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(name: params[:username])

    if @user && @user.authenticate(params[:password])
      login_user(@user)
      flash[:notice] = "Welcome to Kegerator, #{@user.name}"
      redirect_to @user
    else
      flash[:notice] = "Sorry, login failed."
      redirect_to login_path
    end
    
  end

end
