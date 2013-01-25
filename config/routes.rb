Mastercontrol::Application.routes.draw do
  get "instances/index"

  get "instances/new"

  get "instances/show"

  get "instances/update"

  get "instances/create"

  get "instances/edit"

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

  get "tasks/index"

  get "tasks/show"

  get "tasks/new"

  get "tasks/create"

  get "tasks/update"

  get "tasks/edit"

  get "tasks/destroy"

  get "groups/index"

  get "groups/show"

  get "groups/new"

  get "groups/create"

  get "groups/update"

  get "groups/edit"

  get "groups/destroy"

  get "users/index"

  #get "users/show" 
  get "users/:userid/show" => "users#show"

  get "users/new"

  get "users/create"

  get "users/update"

  #get "users/edit"
  
  get "users/:userid/edit" => "users#edit"

  get "users/destroy"

  get "agent/index"

  get "agent/show"

  get "agent/new"

  get "agent/create"

  get "agent/update"

  get "agent/edit"

  get "agent/destroy"

  get "task/index"

  get "task/show"

  get "task/new"

  get "task/create"

  get "task/update"

  get "task/edit"

  get "task/destroy"

  get "report/index"

  get "report/show"

  get "report/new"

  get "report/create"

  get "report/update"

  get "report/edit"

  get "report/destroy"

  get "group/index"

  get "group/show"

  get "group/new"

  get "group/create"

  get "group/update"

  get "group/edit"

  get "group/destroy"
  
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

  get "scrappy/index"

  get "scrappy/show"

  get "scrappy/new"

  get "scrappy/update"

  get "scrappy/edit"

  get "scrappy/destroy"

  get "dashboard/index"

  get "dashboard/show"

  get "dashboard/new"
  
  get "dashboard/nagios"
  
  get "dashboard/edit"

  get "dashboard/destroy"

  get "dashboard/update"

  get "dashboard/timestamp"

  match 'test' => 'application#testing'
  
  # The priority is based upon order of creation:
  # first created -> highest priority.

  resources :instances do

  end

  resources :job do

  end


  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products
  get "logout" => "sessions#destroy", :as => "logout"
  get "login" => "sessions#new", :as => "login"
  get "signup" => "users#new", :as => "signup"
  root :to => "dashboard#index"
  resources :users
   
  resources :sessions
  get "secret" => "secret#index"

  resources :dashboard

  resources :api
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

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => 'dashboard#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
