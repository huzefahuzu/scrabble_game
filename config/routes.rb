Rails.application.routes.draw do
  resources :participants
  resources :games
  resources :players

  resources :leader_boards do
    get :toppers, on: :collection
  end

  root 'leader_boards#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
