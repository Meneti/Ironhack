
cities_downcase = ["miami", "sao paulo", "pittsburg"]

cities_uppercase =cities_downcase.map do |cities|
	cities.capitalize
end

p cities_uppercase

#cities_uppercase = downcase_cities {|cities|}
