class UsersController < ApplicationController
  def index
  	@users = User.all
  end
  def new
  	@user = User.new
end

def create
	@user = User.new(params.require(:user).permit(:email, :password))
	if @user.save
		session[:user_id] = @user.id 
		redirect_to users_path
	else
		render 'new'
	end
end

end

