Rails.application.routes.draw do
  root 'posts#index'
  # get 'posts' => 'posts#index'
  # # verb 'pattern that matches against requested url' => 'controller#action' <- the route is "mapped" to the controller/action pair
  # get 'posts/new' => 'posts/new'
  # get 'posts/:id' => 'posts#show', as: 'post' # gives this route a name to use in the view
  # get 'posts/:id/edit' => 'posts#edit', as: 'edit_post'
  # patch 'posts/:id' => 'posts#update' # no need to generate link, form handles that

  resources :posts # resources generates many routes for an entity, automatically creates many routes
end

# run "rake routes", and if you can't find a name in a resource pack then just go up the list to the most recent named path
