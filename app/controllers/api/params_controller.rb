class Api::ParamsController < ApplicationController
  def name
    p "*" * 70
    p params
    p "*" * 70
    @my_name = params[:my_name]
    p @my_name

    if @my_name[0] == 'a'
      @message = "Hey, your name starts with the first letter in the alphabet!"
    else 
      @message = 'Lovely name!'
    end
    render 'parameter_view.json.jbuilder'
  end

  def guess
    p "*" * 70
    p params
    p "*" * 70

    user_input = params[:guess].to_i
    answer = 132
    if user_input > answer
      @answer =  "Hey you guessed too high"
    elsif user_input < answer
      @answer =  "Hey you guessed too low"
    else 
      @answer =  "Congradulations! You win!"
    end
    render 'game_view.json.jbuilder'
  end
end