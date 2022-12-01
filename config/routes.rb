Rails.application.routes.draw do
  resources :flats
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :flats, only: %i[index show update]
    end
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
