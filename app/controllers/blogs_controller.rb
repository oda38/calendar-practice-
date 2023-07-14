class BlogsController < ApplicationController
  
  def index
    @blogs = Blog.all
    @blog = Blog.new
  end
  
  def create
    Blog.create(blog_parameter)
    redirect_to blogs_path
  end
  
  
  
  def blog_parameter
    params.require(:blog).permit(:title, :content, :start_time)
  end
  
  
  
end
