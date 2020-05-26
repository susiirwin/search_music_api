Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :albums, only: [:index]
      match "artistdetails" => "artist_details#show", :via => [:get]
      match "albumdetails" => "album_details#show", :via => [:get]
    end
  end
end
