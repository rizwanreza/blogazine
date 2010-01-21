class PostsController < ApplicationController
  def index
    @posts = Post.published
  end
  
  def show
    @post = Post.find_by_slug(params[:slug])
    @comment = Comment.new
    @comments = @post.comments
    # render :text => Haml::Engine.new(@post.body, :options => {:ugly => true}).render
  end
end