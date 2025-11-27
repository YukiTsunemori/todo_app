Rails.application.routes.draw do
  resources :tasks, only: [:index]
  devise_for :users
end
