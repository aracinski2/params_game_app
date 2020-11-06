class Api::ParamsGameController < ApplicationController
def name_upcase

  # p params["name"]
  @name = params["name"].upcase
  render 'upcase.json.jb'
end

end
