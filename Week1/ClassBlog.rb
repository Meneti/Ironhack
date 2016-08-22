class Blog
	def initialize(name)
		@name = name
		@container = []
		@page_start = 0
		@page_end = 2
	end	
	def add_post (new_post)
		@container.push(new_post)
	end
	def show_front_page 
		.each do |post|
		if  post.sponsored == 1
		    puts "******#{post.title}******"
			puts "**************************"
			puts "#{[post.text]} "
			puts "--------------------------"
		else
			puts "#{post.title}"
			puts "**************************"
			puts "#{[post.text]} "
			puts "--------------------------"
		end
		@page_start -=3 
		@page_end -=

		def sort_date
		post.sort do |a,b|
			a.date <=> b.date
		end
	def go_next
		@page_start += 3
		@page_end += 3
		end
	def go_prev
		@page_start -= 3
		@page_end -= 3
		end
	end

end

class Post
	attr_reader :title, :date, :text, :sponsored
	def initialize (title, date, text, sponsored)
		@title = title
		@date = date
		@text = text
		@sponsored = sponsored
	end	
end

seconds_in_day = 60 * 60 * 24



Post1= Post.new("How to code", Time.now - 4* seconds_in_day, "It takes a lot of effort", 1),
Post2= Post.new("How to use Mac", Time.now - 6* seconds_in_day, "It is easy", 0),
Post3= Post.new("How to use Windows", Time.now - 8* seconds_in_day, "It is hard", 1),
Post4= Post.new("How to use iPhone", Time.now - 2* seconds_in_day, "It is fun", 0)


MyBlog= Blog.new("MyBlog")

MyBlog.add_post(Post1)
MyBlog.add_post(Post2)
MyBlog.add_post(Post3)
MyBlog.add_post(Post4)

MyBlog.show_front_page

