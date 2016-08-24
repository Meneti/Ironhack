require_relative ("lib/class_calculator.rb")

require "sinatra"


get "/" do
	erb :home
end


post"/calculate_add" do
	first = params[:first_number].to_f
	second = params[:second_number].to_f
	numbers=Calculator.new(first,second)
	result=numbers.add
	"The result of #{first} plus #{second} is #{result}"
end

post"/calculate_subtract" do
	first = params[:first_number].to_f
	second = params[:second_number].to_f
	numbers=Calculator.new(first,second)
	result=numbers.subtract
	"The result of #{first} minus #{second} is #{result}"
end

post"/calculate_multiply" do
	first = params[:first_number].to_f
	second = params[:second_number].to_f
	numbers=Calculator.new(first,second)
	result=numbers.multiply
	"The result of #{first} times #{second} is #{result}"
end

post"/calculate_divide" do
	first = params[:first_number].to_f
	second = params[:second_number].to_f
	numbers=Calculator.new(first,second)
	result=numbers.divide
	"The result of #{first} divided by #{second} is #{result}"
end