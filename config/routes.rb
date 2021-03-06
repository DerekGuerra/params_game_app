Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end
  namespace :api do 
    get'/parameters' => 'params#name'
    get'/guess_game' => 'params#guess'
    get'/segment_route/:guess' => 'params#segment'
  end
end
