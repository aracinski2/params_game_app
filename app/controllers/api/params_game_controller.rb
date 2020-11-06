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

end
