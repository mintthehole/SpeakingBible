SpeakingBible::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  get "home/index"

  get "languages/index"

  get "languages/new"


  post "/languages" => "languages#create"
  post "/languages_form" => "languages#create_form"

  get "/:language/books" => "books#show_books"

  get "/books/get_chapter" => "books#get_chapters_for_book"
  get "/books/get_verse" => "books#get_verse_for_chapter"
  get "/:language/books/listen" => "books#listen"


  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

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
  match '/new'=>"home#new"
  match '/alert'=>"home#alert"
  match '/listen'=>"home#listen"
  match '/book_list'=>"home#book_list"
  match '/crosslink'=>"home#crosslink"
  match '/home_screen'=>"home#home_screen"
  match '/memorize'=>"home#memorize"
  match '/recording'=>"home#recording"
  match '/recording_listing'=>"home#recording_listing"
  match '/search_result'=>"home#search_result"
  match '/info'=>"home#info"
  match '/feedback'=>"home#feedback"
  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
