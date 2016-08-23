#app.rb

require "sinatra"

get "/" do 
	erb :home
end

get "/company" do
	erb :company
end


get "/about" do
	erb :about
end

get "/pizza" do 
	@pizza_ingredients = [
		"Cheese", "Dough", "Tomato Sauce", "Mushrooms", "Pepperoni", "Pineaple"
	]
	erb :favorite_pizza
end
