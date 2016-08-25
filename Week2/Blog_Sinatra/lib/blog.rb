class Blog
	attr_reader :post_container
	
	
# def post_container
# 	return @post_container
# end

	def initialize 
		@post_container = []
	end
	

	def add_post(new_post)
		@post_container.push(new_post)
	end
	

	def latest_posts 
		@post_container.sort do |a,b|
		b.date <=> a.date
		end
	end
end

			