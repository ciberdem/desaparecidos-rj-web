Rails.application.routes.draw do
  root to: 'home#index'

  devise_for :users

  get '/falha_login',   to: 'home#failed_login'
  get '/cadastrar',     to: 'people#new'
  get '/desaparecidos', to: 'people#index'
  get '/editar',        to: 'people#edit'      
  
  post '/people',   to: 'people#create'
  patch '/people',  to: 'people#update'
  delete '/people', to: 'people#destroy'
end
