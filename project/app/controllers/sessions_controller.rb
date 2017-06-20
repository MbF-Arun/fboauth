class SessionsController < ApplicationController
  def create
  	#User.connection
    @users = User.from_omniauth(request.env["omniauth.auth"])
    puts '2'*100
    puts @users.uid
    session[:user_id] = @users.uid
    redirect_to root_path
  end





  def destroy
    session[:user_id] = nil
    redirect_to 'sessions#destroy'
  end
end