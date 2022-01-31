Rails.application.routes.draw do
  resources :directions
  resources :follows
  resources :categories
  mount Ckeditor::Engine => '/ckeditor'
  get 'styleguide/index'
  devise_for :users

  resources :users
  post 'users/:id/follow', to: "users#follow", as: "follow_user"
  	post 'users/:id/unfollow', to: "users#unfollow", as: "unfollow_user"
get 'users/:id/following', :to => "users#following", :as => :following
resources :subscribers
  resources :posts do
	resources :comments
  resources :likes
  resources :favorites
end
get 'about/index'
get 'promo/index'
  get 'posts/index'
  get 'directions/index'

  get 'promo', to: 'promo#index'
  get 'about', to: 'about#index'
  get 'directions', to: 'directions#index'
  get 'users', to: 'users#index'
  get 'users/:id' => 'users#show'
  delete 'users/:id', to: 'users#destroy'
  root 'promo#index'
  # root 'direction#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
