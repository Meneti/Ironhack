class SandwichesController < ApplicationController
	def index
		sandwiches = Sandwich.all 
		render json: sandwiches
	end

	def create 
		sandwich = Sandwich.create(sandwich_params)
		render json: sandwich
	end

	def show 
		sandwich = Sandwich.find_by(id: params[:id])

		# sandwich.ingredients.each do |ingredient|
		# 	sandwich.total_calories += ingredient.calories
		# end
		
		# sandwich_with_ingredients = sandwich.ingredients.all
		unless sandwich 
			render json: {error: "sandwich not found"},
			status: 404
			return
		end

		 render :json => sandwich.to_json(:include => [:ingredients])

		
		# render json: sandwich_with_ingredients
	end


	def add_ingredient 

		sandwich = Sandwich.find_by(id: params[:id])
		ingredient = Ingredient.find_by(id: params[:ingredient][:id])
		
		sandwich.ingredients.push(ingredient)


		sandwich.total_calories = 0
		sandwich.ingredients.each do |ingredient|
			sandwich.total_calories += ingredient.calories
		
		end
		sandwich.save
		
		unless sandwich
			render json: {error: "sandwich not found"},		
			status: 404
			return
		end
		
		 render :json => sandwich.to_json(:include => [:ingredients])
	end
	


	def update
		sandwich = Sandwich.find_by(id: params[:id])
		unless sandwich
			render json: {error: "sandwich not found"},
			status: 404
			return
		end
		sandwich.update(sandwich_params)
		render json: sandwich
	end

	def destroy
		sandwich = Sandwich.find_by(id: params[:id])
		unless sandwich
			render json: {error: "sandwich not found"},
			status: 404
			return
		end
		sandwich.destroy
		render json: sandwich
	end



	private

	def sandwich_params
		params.require(:sandwich)
			.permit(:name, :bread_type)
	end
	
end
			

