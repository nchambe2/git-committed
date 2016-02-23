Rails.application.routes.draw do

  root 'users#index'

  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy', as: 'logout'

  get '/browse', to: 'profiles#index'

  get '/profile/:id', to: 'profiles#show', as: 'profile'
  get '/profile/:id/edit', to: 'profiles#edit', as: 'edit_profile'
  patch '/profile/:id', to: 'profiles#update', as: 'update_profile'

  get  '/filters', to: 'filters#edit', as: 'filters'
  post '/filters', to: 'filters#update'



  get '/account/new', to: 'users#new', as: 'new_account'
  post '/account', to: 'users#create', as: 'account'
  patch '/account', to: 'users#update'
  delete '/account', to: 'users#destroy'
  get '/account/settings', to: 'users#edit', as: 'account_settings'

  resources :conversations do
    resources :messages
  end
  
  
  # get list of all likes where user is the liker
  get '/pull-requests/puller', to: 'likes#liker_index', as: 'puller_index'
  # get list of all likes where user is the liked person
  get '/pull-requests/pullee', to: 'likes#liked_index', as: 'pullee_index'
  post '/pull-requests', to: 'likes#create', as: 'create_pull_request'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
