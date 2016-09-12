Rails.application.routes.draw do
  get '/', to: 'products#index'
  get '/users/:id', to: 'users#show'
  get'/users/:id', to: 'user#show'
  post '/user', to: 'user#create'
  get '/users/:user_id/products/new', to:'products#new'
  post '/user/:iser_id/products', to: 'products#create',  as: :user_products
  
end
 