Rails.application.routes.draw do
  root to: "home#index"
  get 'home/index'

  devise_for :users

  resources:users, only: %i[show edit update]
end
