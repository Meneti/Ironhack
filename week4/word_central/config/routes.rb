Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get "/" => "site#home"

get "/text_inspections/new" => "text_inspections#new"

post "/text_inspections" => "text_inspections#create"

end
