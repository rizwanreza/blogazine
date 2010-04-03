class Admin::DashboardController < ApplicationController
  before_filter :authenticate_admin!
  layout 'admin/admin'
    
  def index
    @posts = Post.recent
    @comments = Comment.recent
  end
end
