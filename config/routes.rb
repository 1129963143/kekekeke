Rails.application.routes.draw do





  namespace :blogs do
  get 'post_sorts/index'
  end

  namespace :blogs do
  get 'post_sorts/new'
  end

  namespace :blogs do
  get 'post_sorts/create'
  end

  get 'about/we'

  namespace :blogs do
  resources :posts do
    resources :comments, only: [:create]
  end
    resources :post_sorts, only: [:index, :new, :create, :destroy]
  end



  #===========================
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  #==========================
  devise_for :users, controllers: {
                 sessions: 'users/sessions',               #登录／退出
                 registrations: 'users/registrations',
                 passwords: 'users/passwords'
                   },
             path_names: {    #为动作设置别名
                 sign_in: 'login',       #登录别名
                 sign_out: 'logout',
                 password: 'secret',
                              confirmation: 'verification',
                              registration: 'register'

             }
  #路由域======================
  devise_scope :user do
    get 'login',  to: 'users/sessions#new'
    get 'register', to: 'users/registrations#new'
    get 'secret', to: 'users/passwords#new'
  end

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
  root to: "welcome#home"
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
