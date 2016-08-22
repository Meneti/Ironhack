class StringCalculator
	def add (x)
		clean_string = x.gsub(/[^0-9\-]/," ") 
		string_array = clean_string.split(" ")
		string_array[0].to_i + string_array[1].to_i + string_array[2].to_i + string_array[3].to_i 
	end
end