Canu::Application.routes.draw do
    # The priority is based upon order of creation:
    # first created -> highest priority.
    
    # Sample of regular route:
    #   match 'products/:id' => 'catalog#view'
    # Keep in mind you can assign values other than :controller and :action
    
    resources :users
    #resources :pages
    #resources :tribemachine
    
    #
    # Homepage:
    #
    
    match 'user/new' => 'users#new', :as => "new_user"
    match 'vision' => 'pages#vision', :as => 'vision'
    match 'product' => 'pages#product', :as => 'product'
    match 'about' => 'pages#about', :as => 'about'
    match 'index' => 'pages#index'
    match 'world' => 'pages#world', :as => 'world'
    match 'jobs' => 'pages#jobs', :as => 'jobs'
    match 'contacts' => 'pages#contacts', :as => 'contacts'
    match 'press' => 'pages#press', :as => 'press'
    match 'privacy' => 'pages#privacy', :as => 'privacy'
    match 'terms' => 'pages#terms', :as => 'terms'
    match 'help' => 'pages#help', :as => 'help'
    match 'start' => 'tribemachine#start', :as => 'start'
    
    
    #
    # Promo Pages:
    #
    
    match 'hwa' => 'hangwith#hwa', :as => 'hwa'
    match 'hwb' => 'hangwith#hwb', :as => 'hwb'
    match 'hwc' => 'hangwith#hwc', :as => 'hwc'
    
    
    #
    # App Use:
    #
    
    match 'privacyapp' => 'webapp#privacy', :as => 'privacyapp'
    match 'termsapp' => 'webapp#terms', :as => 'termsapp'
    match 'lockdown' => 'webapp#lockdown', :as => 'lockdown'
    
    
    #
    # Smart Links:
    #
    
    match 'd' => 'webapp#d', :as => 'd'
    match 'a' => 'webapp#a', :as => 'a'
    match 'b' => 'webapp#b', :as => 'b'
    match 'p' => 'webapp#p', :as => 'p'
    match 's' => 'webapp#s', :as => 's'
    
    
    #
    # Stats:
    #

    match 'statistics' => 'webapplication/statistics#index', :as => 'statistics'
    

    #
    # Webapp Invite (Use Custom Layout - webapp_invite for og: meta tags)
    # 
    
    match 'i/:invitation_token' => 'webapplication/activities#invite', :as => 'invite'
    match 'expired' => 'webapp#expired', :as => 'expired'
   
   
    #
    # Public Page of a city:
    #
    
    match 'stockholm' => 'webapplication/statistics#local_activities', :as => 'local_activities'
    match 'public_stockholm/:id' => 'webapplication/public#show', :as => 'show_local_activities'
    match 'public_stockholm' => 'webapplication/public#public_stockholm', :as => 'public_stockholm'
    
    
    #
    # Art Project (vitali):
    #
  
    match 'stockholm_summer' => 'webapplication/public#stockholm_summer', :as => 'stockholm_summer'
    


    
    
    
    
    
    
    
    #####################################
    
    
    
    
    
    
    
    #
    # Postponed
    #


    # Add Name for a single interaction
    match 'contribute' => 'webapp#contribute', :as => 'contribute'
    
    match 'resetpassword' => 'users#resetpassword', :as => 'resetpassword'
    match 'email-confirmed' => 'users#emailconfirmation', :as => 'emailconfirmation'
    
    #
    # For Internal Use (Protected)
    #
    match 'stats' => 'users#stats', :as => 'user_stats'
    #    match 'activities' => 'webapp#activities', :as => 'activities'
    
    
    #
    # Web App:
    #
    match 'index_demo' => 'pages#index_demo', :as => 'index_demo'
    match 'sign-in' => 'webapplication/session#sign_in', :as => 'sign_in'
    match 'set-location' => 'webapplication/session#set_location', :as => 'set_location'
    
    match 'sign-up' => 'webapplication/session#sign_up', :as => 'sign_up'
    match 'facebook-auth' => 'webapplication/session#facebook_auth',:as => 'facebook_auth'
    
    match 'iamnew_account' => 'webapp#iamnew_account', :as => 'iamnew_account'
    match 'iamnew_profile' => 'webapp#iamnew_profile', :as => 'iamnew_profile'
    
    #
    # Signed In
    #
    # List of Feeds
    match 'fullview_signedin' => 'webapp#fullview_signedin', :as => 'fullview_signedin'
    match 'activities' => 'webapplication/activities#index', :as => "activities"
    match 'activities/:activity_id' => 'webapplication/activities#show', :as => "show_activity"
    
    # Full View of an activity
    match 'fullview/:activity_id' => 'webapp#fullview', :as => 'fullview'
    
    # Settings
    match 'settings' => 'webapp#settings', :as => 'settings'
    match 'edit_profile' => 'webapp#edit_profile', :as => 'edit_profile'
    
    
    
    
    
    # ---------------------------API--------------------------------------
    # ------------------------USERS-------------------------------------
    
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
    root :to => 'pages#index'
    
    # See how all your routes lay out with "rake routes"
    
    # This is a legacy wild controller route that's not recommended for RESTful applications.
    # Note: This route will make all actions in every controller accessible via GET requests.
    # match ':controller(/:action(/:id))(.:format)'
end
