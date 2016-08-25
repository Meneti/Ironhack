
require_relative("../lib/post.rb")
require_relative("../lib/blog.rb")

RSpec.describe Blog  do
	before :each do
		seconds_in_day = 60 * 60 * 24
		@blog=Blog.new
		@post1=Post.new("How to create a blog", Time.now - 4* seconds_in_day,"It is very cool to have your own blog")
		@post2=Post.new("How to create a website",Time.now - 9* seconds_in_day,"It is simple have your own website")
		@post3=Post.new("How to create an app", Time.now - 6* seconds_in_day,"It is hard to have your own app")
		@blog.add_post(@post1)
		@blog.add_post(@post2)
		@blog.add_post(@post3)
	end

describe "add_post" do
	it "adds a new post to @post_container" do
		expect(@blog.post_container.length).to eq(3)
	end
	end

describe "latest_posts" do
	it "sorts posts in chronological order" do
		@blog.latest_posts
		expect(@blog.post_container[0].title).to eq("How to create a blog")
	end
	end


	

		
end

