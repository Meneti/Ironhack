require_relative ("lib/class_calculator.rb")

require "sinatra"


get "/" do
	erb :home
end


post"/calculate_add" do
	first = params[:first_number].to_f
	second = params[:second_number].to_f
	numbers=Calculator.new
	result=numbers.add(first,second)
	"The result of #{first} plus #{second} is #{result}"
end

post"/calculate_subtract" do
	first = params[:first_number].to_f
	second = params[:second_number].to_f
	numbers=Calculator.new
	result=numbers.subtract(first,second)
	"The result of #{first} minus #{second} is #{result}"
end

post"/calculate_multiply" do
	first = params[:first_number].to_f
	second = params[:second_number].to_f
	numbers=Calculator.new
	result=numbers.multiply(first,second)
	"The result of #{first} times #{second} is #{result}"
end

post"/calculate_divide" do
	first = params[:first_number].to_f
	second = params[:second_number].to_f
	numbers=Calculator.new
	result=numbers.divide(first,second)
	"The result of #{first} divided by #{second} is #{result}"
end