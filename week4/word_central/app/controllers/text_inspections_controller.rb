class TextInspectionsController < ApplicationController
	def new
		render "new"
	end

	def create
	@text = params[:text_inspection][:user_text]
    @word_count = @text.split(" ").length
    @word_array = @text.split(" ")
   	@counts = Hash.new 0
	@word_array.each do |word|
  	@counts[word] += 1
	end
    		

    render "results"
  	end
end


# 

# if word == "and" || word ==  "as" || word ==  "the" || word ==  "it" 
# @word_count.each { |word| counts[words] += 1 }		
		# end