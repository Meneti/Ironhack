class Lexiconomitron

	def eat_t(string)

		string.downcase.delete("t")

	end

	def shazam(array)

		array.each do |str|
			str.reverse! #Didn't work without "!", look up function of "!"
		end

		string_flipped = eat_t(array.join(","))

		array_flipped = string_flipped.split(",")

  		new_array = []

  		new_array << array_flipped[0]
  		new_array << array_flipped[-1]

  		p new_array
 
	end

	def oompa_loompa(array)

		new_array = []

		array.each do |x|

			if x.length <=  3 

				new_array << x

			end

		end
		new_array
	end

end