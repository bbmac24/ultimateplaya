class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(params.require(:user).permit(:password, :password_confirmation, :username, :email))

    if @user.save
      session[:user_id] = @user.id
      flash[:info] = "Welcome to Ultimate Players!"
      redirect_to root_path
    else
      flash[:danger] = "Incorrect signup!"
      redirect_to root_path
    end
  end
end