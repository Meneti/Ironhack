class ConcertsController < ApplicationController

	def index
    @concerts = Concert.order(artist: :asc)
    @concerts_today = Concert.where(date: Time.now..Time.now.end_of_day)
    @concerts_month = Concert.where(date: Time.now..Time.now.end_of_month)
  end


  def new
	@concert = Concert.new
	end

	def show
    # Display a single project from an id
    @concert = Concert.find_by(id: params[:id])
   		 unless @concert
     	 render "no_concert_found"
   		 end
 	 end
	
	def create
    # Create a new project from the parameters passed in the form
    concert = Concert.new(
      artist: params[:concert][:artist], 
      city: params[:concert][:city], 
      venue: params[:concert][:venue], 
      date: params[:concert][:date], 
      price: params[:concert][:price], 
      description: params[:concert][:description]
      )

			if concert.save
   		 	redirect_to "/concerts/#{concert.id}"
  			else
    			@concert = concert
    		end
	end

end


