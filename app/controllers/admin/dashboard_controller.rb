class Admin::DashboardController < ApplicationController
  before_filter :authenticate_admin!
  
  def index
    @posts = Post.recent
    @comments = Comment.recent
  end
end
