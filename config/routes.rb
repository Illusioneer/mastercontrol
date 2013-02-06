Mastercontrol::Application.routes.draw do
  get "instances/index"

  get "instances/new"

  get "instances/:name/show" => "instances#show"

  get "instances/update"

  get "instances/create"

  get "instances/:name/edit" => "instances#edit"
  
  get "instances/destroy"

  get "systems/index"

  get "systems/show"

  get "systems/new"

  get "systems/create"

  get "systems/update"

  get "systems/edit"

  get "systems/destroy"

  get "reports/index"

  get "reports/show"

  get "reports/new"

  get "reports/create"

  get "reports/update"

  get "reports/edit"

  get "reports/destroy"

  get "groups/index"

  get "groups/show"

  get "groups/new"

  get "groups/create"

  get "groups/update"

  get "groups/edit"

  get "groups/destroy"

  get "users/index"

  get "users/:userid/show" => "users#show"

  get "users/new"

  get "users/create"

  get "users/update"

  get "users/:userid/edit" => "users#edit"

  get "users/destroy"

  post "job/new"

  post "job/create"

  get "job/update"

  get "job/save"

  get "job/edit"

  get "job/destory"

  get "job/show"
  
  post "job/scranton"

  get "api/index"

  get "api/showgroups"

  get "api/lastcheck"

  get "dashboard/index"

  get "dashboard/show"
  
  get "dashboard/nagios"

  get "dashboard/report"

  post "dashboard/generate"

  get "dashboard/timestamp"

  match 'test' => 'application#testing'

  resources :instances do

  end

  resources :job do

  end

  get "logout" => "sessions#destroy", :as => "logout"
  get "login" => "sessions#new", :as => "login"
  get "signup" => "users#new", :as => "signup"
  root :to => "dashboard#index"
  resources :users
   
  resources :sessions
  get "secret" => "secret#index"

  resources :dashboard

  resources :api

  root :to => 'dashboard#index'

end

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.


  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'