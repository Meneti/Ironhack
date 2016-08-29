require "sinatra"
require "sinatra/reloader" if development?
require "imdb"

enable (:sessions)

get "/" do
	erb :home
end

post "/movies" do
word = params[:word]
session[:word] = word
redirect "/search_results"
end

get "/search_results" do
the_search = Imdb::Search.new(session[:word])
@movies = the_search.movies.take(20)
@movies = @movies.delete_if{|movie| movie.poster == nil}
@movies = @movies.take(9)
@correct_movie = @movies.sample
session[:correct_year] = @correct_movie.year

erb :results
end

post "/response" do
response_year = params[:response_year]
session[:response_year] = response_year
redirect "/score"
end

get "/score" do

@response_year = session[:response_year]
@correct_year = session[:correct_year]
erb :score
end