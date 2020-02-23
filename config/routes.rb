Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  root to: "events#index"
  resources :events
  resources :attendances
  resources :users do
  resources :avatars, only: [:create]
  end
end
