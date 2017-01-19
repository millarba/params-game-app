class ParamsGamesController < ApplicationController

  def first_game
    @message = params["message"].upcase
    if @message.chr == "A"
      @response = "Hey, your name starts with the first letter of the alphabet!"
    end
  end

  def second_game
    answer = 36
    @number = params["number"].to_i
    if @number < answer 
      @response = "Higher!"
    elsif @number > answer
      @response = "Lower!"
    else
      @response = "You got it!"    
    end
  end

  def segment_params
    answer = 42
    @value = params["wildcard"].to_i
    if @value < answer
      @response = "Guess higher!"
    elsif @value > answer
      @response = "Guess lower!"
    else
      @response = "You got it!"
    end
  end

  def get_form

  end

  def use_form
    answer = 42
    @value = params["form_message"].to_i
    if @value < answer
      @response = "Guess higher!"
    elsif @value > answer
      @response = "Guess lower!"
    else
      @response = "You got it!"
    end
  end

  def get_guess

  end

  def use_guess
    answer = 42
    @guess = params["form_guess"].to_i
    if @guess > answer
      @response = "Guess lower"
    elsif @guess < answer
      @response = "Guess higher"
    else
      @response = "You got it!"
    end
  end
end
