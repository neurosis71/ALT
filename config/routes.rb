Rails.application.routes.draw do

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'

  devise_for :users, path_names: {
                 sign_in: 'login',
                 sign_out: 'logout',
                   }

  #application routes
  get 'about/index', to: 'about#index', as: :about

  get 'photos/index', to: 'photos#index', as: :photos
  get 'photos/show', to: 'photos#show', as: :album

  get 'perso/index', to: 'perso#index', as: :perso_projects
  get 'perso/show', to: 'perso#show', as: :perso_project

  get 'resume/index', to: 'resume#index', as: :resume

  get 'book/index', to: 'book#index', as: :book

  get 'locations/show', to: 'locations#show', as: :location

  match '/contacts',     to: 'contacts#new',             via: 'get'
  resources "contacts", only: [:new, :create]

  get 'projects/show'

  #admin routes
  namespace :admin do
    #root
    get '', to: 'about#show', as: '/'

    #about
    match '/about/:id/edit' => 'about#update', :via => :post
    resources :about

    #resume
    resources :resume
    post 'resume/resume_upload' => 'resume#resume_upload', :as => :resume_upload

    #cursus
    resources :cursus
    get 'cursus/:id/delete' => 'cursus#delete', :as => :cursu_delete
    get 'cursus/:id/destroy' => 'cursus#destroy', :as => :cursu_destroy

    #experience
    resources :experience
    get 'experience/:id/delete' => 'experience#delete', :as => :experience_delete
    get 'experience/:id/destroy' => 'experience#destroy', :as => :experience_destroy

    #skills
    resources :skills
    get 'skills/:id/delete' => 'skills#delete', :as => :skill_delete
    get 'skills/:id/destroy' => 'skills#destroy', :as => :skill_destroy

    #locations
    resources :locations
    get 'locations/:id/delete' => 'locations#delete', :as => :location_delete
    get 'locations/:id/destroy' => 'locations#destroy', :as => :location_destroy

    #projects
    resources :projects
    get 'projects/:id/delete' => 'projects#delete', :as => :project_delete
    get 'projects/:id/destroy' => 'projects#destroy', :as => :project_destroy

    #personal projects
    resources :perso_projects
    get 'perso_projects/:id/delete' => 'perso_projects#delete', :as => :perso_project_delete
    get 'perso_projects/:id/destroy' => 'perso_projects#destroy', :as => :perso_project_destroy

    #photos
    resources :photo
    get 'photo/:id/delete' => 'photo#delete', :as => :photo_delete
    get 'photo/:id/destroy' => 'photo#destroy', :as => :photo_destroy

    #photos
    resources :albums
    get 'albums/:id/delete' => 'albums#delete', :as => :album_delete
    get 'albums/:id/destroy' => 'albums#destroy', :as => :album_destroy

    #contact
    get 'contact/index' => 'contact#index', :as => :contact
    get 'contact/update' => 'contact#update', :as => :update_contact

  end

  # Local management
  get '/change_locale/:locale', to: 'settings#change_locale', as: :change_locale


  # ASSETS
  mount Ckeditor::Engine => '/ckeditor'

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
