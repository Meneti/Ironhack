class CommentsController < ApplicationController
	 def new
		@concert = Concert.find(params[:concert_id])
    	@comment = @concert.comments.new
		end

	def create
		@concert = Concert.find(params[:concert_id])
		@comment = @concert.comments.new(comment_params)
    	@comment.save
    	puts params[:comment]
    	redirect_to "/concerts/#{@concert.id}/comments"
    end

    def index
    	@concert = Concert.find(params[:concert_id])
    	@comments = @concert.comments
    end

	private
    def comment_params
    params.require(:comment).permit(:text)
  end
  end
