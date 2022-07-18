Rails.application.routes.draw do
  resources :albums
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root to: 'albums#index'
  resources :albums do
    member do
      delete :delete_album_photos
    end
  end
end
