class SessionsController < ApplicationController

  def new
  end

  def create
    u = User.find_by(username: params[:user][:username])

    if u && u.authenticate(params[:user][:password])
      session[:user_id] = u.id
      flash[:success] = "Welcome back, #{user.username}!"
      redirect_to root_path
    else
      flash[:danger] = "Incorrect username and/or password."
      redirect_to root_path
      # render :new
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = "You have successfully logged out!"
    redirect_to root_path
  end
end