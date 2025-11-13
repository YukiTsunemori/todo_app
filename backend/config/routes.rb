Rails.application.routes.draw do
  devise_for :users
  get 'api/test', to: 'application#test'
end
