ActionController::Routing::Routes.draw do |map|
  map.root :controller => 'posts'
  map.resources :posts, :has_many => :comments
  map.namespace :admin do |admin|
    admin.resources :posts
  end
end