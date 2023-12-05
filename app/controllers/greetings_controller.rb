class GreetingsController < ApplicationController
  def random
    @random_message = Message.order(Arel.sql('RANDOM()')).first
    render json: { greeting: @random_message.greeting }
  end
end
