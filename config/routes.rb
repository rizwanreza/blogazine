ActionController::Routing::Routes.draw do |map|
  map.devise_for :admins, :as => 'admin',  :path_names => { :sign_in => 'login', :sign_out => 'logout' }

  map.namespace :admin do |admin|
    admin.resources :posts
    admin.resources :comments, :only => [:index, :show, :update, :edit, :destroy]
  end

  map.connect 'admin', :controller => 'admin/posts', :action => 'index'
  map.resources :comments, :only => [:new, :create]
  
  map.comments_slug '/comments/:slug', :controller => 'comments', :action => 'show'
  map.slug '/:slug', :controller => 'posts', :action => 'show'
  map.root :controller => 'posts', :action => 'index'
end
