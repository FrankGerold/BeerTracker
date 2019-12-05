class ApplicationController < ActionController::Base

  def login_user(params)
    session[:username] = params[:username]
  end

end
