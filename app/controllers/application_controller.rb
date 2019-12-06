class ApplicationController < ActionController::Base

  def login_user(u_id)
    session[:user_id] = u_id
  end


    

end
