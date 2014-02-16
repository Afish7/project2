class AuthsController < ApplicationController
  def new
  	@user = User.new
  end

  def create
  	user = User.find_by(:email => params[:user][:email])
  	if user.authenticate?(params[:user][:password])
  		session[:user_id]=user.id
  		redirect_to lists_path
  	else 
  		redirect_to new_auth_path
  		
  	end
  end

  def destroy
  	session[:user_id]=nil
  	redirect_to new_auth_path
  end
end
