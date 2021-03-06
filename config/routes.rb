Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end

  namespace :api do
    get "/name" => "params_game#name_upcase"
    get "/name_a" => "params_game#name_message"
    get "/guess_number" => "params_game#query"
    get "/guess_a_number/:number" => "params_game#segment"
    post "/body_params" => "params_game#body"
  end
end
