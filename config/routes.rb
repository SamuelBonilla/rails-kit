Rails.application.routes.draw do
  devise_for :auth, controllers: {
    registrations: 'auth/registrations'
  }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
