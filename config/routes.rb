Rails.application.routes.draw do
  mount Motor::Admin => '/motor_admin'
  devise_for :auth
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
