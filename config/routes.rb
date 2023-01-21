Rails.application.routes.draw do
  authenticate :auth, lambda { |current_user| current_user.has_role? "admin" } do
    mount Motor::Admin => '/motor_admin'
  end
  devise_for :auth
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
