class SandwichViewsController < ApplicationController
	def index
		@sandwiches = Sandwich.all
	end	

	def show
		 @the_sandwich = Sandwich.find_by(id: params[:id])
		 @all_ingredients = Ingredient.all
	end
end
