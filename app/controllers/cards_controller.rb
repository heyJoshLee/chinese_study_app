class CardsController < ApplicationController
  before_action :set_user

  def index
    @cards = Card.all
  end

  def create
    card = Card.new(card_params)
    card.user_id = current_user.id if session[:user_id]
    card.save
    respond_to do |format|
      format.js do
        @cards = Card.all
      end
    end
  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end

  def card_params
    params.require(:card).permit!
    
  end

end