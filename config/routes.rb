Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#home"
  get 'dashboard', to: 'dashboard#index'
  get 'administration', to: 'administration#index'
  GET 'recipes/random'
GET 'recipes/:id/information'
end
