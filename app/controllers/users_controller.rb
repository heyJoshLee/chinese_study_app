class UsersController < ApplicationController

  def create
    user = User.new(user_params)
    if user.save
      flash[:success] = "You have created an account. Please log in."
      redirect_to signin_path
    else
      redirect_to signup_path
    end
  end



  private


  def user_params
    params.require(:user).permit(:username, :password, :email)
  end

end