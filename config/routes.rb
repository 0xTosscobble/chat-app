Rails.application.routes.draw do
  root to: 'home#index'
  get 'home/index'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  devise_scope :user do
  # root to: "devise/sessions#new"
  end

  resources :users
  resources :rooms
  resources :messages
  

  

end
