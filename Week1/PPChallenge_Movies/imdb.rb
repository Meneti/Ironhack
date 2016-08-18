require("imdb")
require("awesome_print")

movie_array = IO.readlines 'movies.txt' # ["title1","title2","title3"]
movies = [] # [object1, object2, object3]

movie_array.each do |movie_title|
	search_results = Imdb::Search.new(movie_title)
	first_result = search_results.movies[0]
	movies.push({title: first_result.title,rating:first_result.rating})
end

ap movies

grid = ""

10.downto(1).each do |row|
	movies.each do |movie|
		if movie[:rating] >= row
		  grid += "|#|"
		else
		  grid += "| |"
		end
	end
	grid += "\n"
end


puts grid