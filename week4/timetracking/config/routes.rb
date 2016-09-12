Rails.application.routes.draw do

  get '/', to: 'site#home'

  get '/contact', to: 'site#contact'

  # get '/say_name/:name', to: 'site#say_name'

  # get '/projects', to: 'projects#index', as: :projects

  get '/projects/new', to: 'projects#new', as: :new

  post '/projects', to: 'projects#create'

  get '/projects/:id', to: 'projects#show'

  get '/projects/:project_id/time_entries', to: 'time_entries#index'

  get '/projects/:projects_id/time_entries/new', to: "time_entries#new"

  post '/projects/:projects_id/time_entries', to: 'time_entries#create', as: :projects_time_entries

  get '/projects/:project_id/time_entries/:id/edit', to: 'time_entries#edit'

  patch "/projects/:project_id/time_entries/:id", to: 'time_entries#update', as: :project_time_entry

end