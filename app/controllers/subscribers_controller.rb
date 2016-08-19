class SubscribersController < ApplicationController


  def create
    @subscriber = Subscriber.new(subscriber_params)
    @subscriber.save
    flash[:sucess] = 'Se ha suscrito con exitó a nuestra base de datos'
    redirect_to root_path
  end

  private

  def subscriber_params
  	params.require(:subscriber).permit(:email)
  end

end
