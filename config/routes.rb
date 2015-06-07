Rails.application.routes.draw do
  # resources :services, :categories, :sellers
  
  root 'sellers#index'
 
  get 'services/' => 'services#index'
  get 'my_services/' => 'services#my_index', as: :my_services
  post 'services/' => 'services#create'
  get 'services/new' => 'services#new', as: :new_service
  get 'services/:id' => 'services#show',as: :service
  get 'services/:id/edit' => 'services#edit',as: :edit_service
  patch 'services/:id' => 'services#update'
  delete 'services/:id' => 'services#destroy'

  get 'categories/' => 'categories#index'
  post 'categories/' => 'categories#create'
  get 'categories/new' => 'categories#new', as: :new_category
  get 'categories/:id' => 'categories#show',as: :category
  get 'categories/:id/edit' => 'categories#edit',as: :edit_category
  patch 'categories/:id' => 'categories#update'
  delete 'categories/:id' => 'categories#destroy'

  get 'sellers/' => 'sellers#index'
  post 'sellers/' => 'sellers#create'
  get 'sellers/new' => 'sellers#new', as: :new_seller

  get 'sessions/new' => 'sessions#new', as: :new_session
  post 'sessions/new' => 'sessions#create', as: :create_session
  get 'sessions/destroy' => 'sessions#destroy', as: :destroy_session 

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # get "services/" => "services#index"

  # You can have the root of your site routed with "root"
  # root 'services#index'

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
