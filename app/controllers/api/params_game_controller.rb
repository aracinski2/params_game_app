class Api::ParamsGameController < ApplicationController
def name_upcase

  # p params["name"]
  @name = params["name"].upcase
  render 'upcase.json.jb'
end

def name_message
  
  # @name = params["name"]
  if params["name"][0] == "a"
    @name = "Hey, your name starts with the first letter of the alphabet!"
  end
  render 'a_name.json.jb'
end

def guess
  @number = params["number"].to_i
  if @number > 36
    @message = "too high"
  elsif @number < 36
    @message = "too low"
  elsif @number == 36
    @message = "you win!"
  end
  render 'guess.json.jb'
end

def segment
  @number = params[:number].to_i
  answer = 36
  if @number > answer
    @message = "too high"
  elsif @number < answer
    @message = "too low"
  else
    @message = "you win!"
  end
  render 'guesser.json.jb'
end

end
