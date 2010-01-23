class CommentsController < ApplicationController
  def show
    @post = Post.find_by_slug(params[:slug])
    @comment = Comment.new
    @comments = @post.comments.all(:conditions => {:moderated => true})
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(params[:comment])
    @post = Post.find(params[:comment][:post_id])
    if @comment.save
      flash[:notice] = "Successfully created comment."
      redirect_to comments_slug_path(@post.slug)
    else
      flash[:notice] = "Sorry, your comment wasn't submitted at the moment, please try again later."
      redirect_to comments_slug_path(@post.slug)
    end
  end
end