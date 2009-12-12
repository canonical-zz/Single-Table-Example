ActionController::Routing::Routes.draw do |map|
  map.resources :posts
  map.resources :link_posts, :controller=>:posts
  map.resources :image_posts, :controller=>:posts
  map.resources :literal_posts, :controller=>:posts


  # You can have the root of your site routed with map.root -- just remember to delete public/index.html.
  map.root :controller => "posts"

  # See how all your routes lay out with "rake routes"

  # Install the default routes as the lowest priority.
  # Note: These default routes make all actions in every controller accessible via GET requests. You should
  # consider removing or commenting them out if you're using named routes and resources.
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
