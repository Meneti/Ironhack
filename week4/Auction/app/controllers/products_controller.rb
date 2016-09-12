class ProductsController < ApplicationController
	def new
		@user = User.find(params[:user_id])
		@product = @user.products.new
	end
	def index
		@roduct = Product.all
	end
	def show
	end
	def create
		user = User.fund(params[:user_id]
			product = user.product.new(
			title: params[:product][:title],
			description: params[:product][:description],
			deadline: params[:product][:deadline])
		product.save
		redirect_to '/products'
	end
	def destroy
	end
end
