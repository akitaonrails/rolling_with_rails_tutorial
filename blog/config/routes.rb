ActionController::Routing::Routes.draw do |map|
  map.resources :roles

  map.resources :companies

  map.resources :users

  map.resource :session

  map.root :controller => 'posts'
  map.resources :posts, :has_many => :comments
  map.namespace :admin do |admin|
    admin.resources :posts
  end
  
  map.signup '/signup', :controller => 'users', :action => 'new'
  map.login  '/login',  :controller => 'sessions', :action => 'new'
  map.logout '/logout', :controller => 'sessions', :action => 'destroy'
  
end