class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params["email"])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:success] = "You are now logged in."
      redirect_to user_cards_path(user)
    else
      flash[:error] = "Email or password is not correct."
      render :new
    end
  end

end