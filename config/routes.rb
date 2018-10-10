Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#home"
  get 'dashboard', to: 'dashboard#index'
  get 'administration', to: 'administration#index'
end
