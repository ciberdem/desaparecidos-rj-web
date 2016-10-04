Rails.application.routes.draw do
  root to: 'home#index'

  get '/failed_login', to: 'home#failed_login'

  devise_for :users
end
