class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(params[:comment])
    @comment.post_id = params[:post_id]
    @post = Post.find(params[:post_id])
    if @comment.save
      flash[:notice] = "Successfully created comment."
      redirect_to slug_path(@post.slug)
    else
      render :action => 'new'
    end
  end
end