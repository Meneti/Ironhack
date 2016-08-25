require "sinatra"
require_relative("lib/blog.rb")
require_relative("lib/post.rb")

seconds_in_day = 60 * 60 * 24

blog=Blog.new

post1=Post.new("How to create a blog", Time.now - 4* seconds_in_day,"It is very cool to have your own blog")
post2=Post.new("How to create a website",Time.now - 9* seconds_in_day,"It is simple have your own website")
post3=Post.new("How to create an app", Time.now - 6* seconds_in_day,"It is hard to have your own app")

blog.add_post(post1)
blog.add_post(post2)
blog.add_post(post3)



get "/" do 
	@blog = blog
	erb :home
end


get "/Post_in_full/:index" do
	index = params[:index].to_i
    @post = blog.post_container[index]
	erb :Post_in_full
end

get "/new_post" do
	erb :new_post
end

post "/create_post" do
post = Post.new(params[:title],Time.now, params[:text])
blog.add_post(post)
redirect "/"
end