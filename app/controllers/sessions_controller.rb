class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.find_by(email: params[:session][:email].downcase)
  	if user && user.authenticate(params[:session][:password])
  		flash[:success] = "User was found. LogIn completed"
  		log_in(user)
  		redirect_to user
  	else
  		flash[:danger] = "User doesn't exist!"
  		render 'new'
  	end
  end
end
