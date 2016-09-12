Rails.application.routes.draw do

  resources :project, only: [:index, :show, :new, :create] do
      resources :time_entries, except: [:show]
    end

  get '/', to: 'site#home'

  get '/contact', to: 'site#contact'

  get '/say_name/:name', to: 'site#say_name'





end