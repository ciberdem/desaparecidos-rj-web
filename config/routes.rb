Rails.application.routes.draw do
  root to: 'home#index'

  devise_for :users

  get '/falha_login',   to: 'home#failed_login'
  get '/cadastrar',     to: 'people#new'
  get '/desaparecidos', to: 'people#index'
  get '/editar',        to: 'people#edit'      
  get '/buscar',        to: 'people#search'
  get '/info/:id',      to: 'people#show', as: 'info'
  get '/cartazete/:id', to: 'people#generate_poster', as: 'cartazete'
  
  post '/people',   to: 'people#create'
  post '/filter',   to: 'people#filter'
  patch '/people',  to: 'people#update'
  delete '/people', to: 'people#destroy'
end
