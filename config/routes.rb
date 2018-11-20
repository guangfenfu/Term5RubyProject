Rails.application.routes.draw do
  get 'charges/new'
  get 'charges/create'
  devise_for :users, controllers: {sessions: 'users/sessions', registrations: 'users/registrations'}
  # get 'shopping_cart/index'
  # get 'shopping_cart/show'
  # get 'about/index'
  # get 'user_snap_shot/index'
  # get 'user_snap_shot/show'
  # get 'product_snap_shot/index'
  # get 'product_snap_shot/show'
  # get 'customer/index'
  # get 'province/index'
  # get 'tax/index'
  # get 'product' => 'product#index'
  # get 'product/show'
  # get 'category/index'
  # get 'brand/index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :order, only: [:index, :show]
  resources :product, only: [:index, :show] do
    member do
      post :mark_as_favourite
    end
  end
  resources :brand, only: [:index, :show]
  resources :category, only: [:index, :show]
  resources :product_category, only: [:index, :show]
  resources :contact, only: [:index, :show]
  resources :about, only: [:index, :show]
  resources :tax, only: [:index, :show]
  resources :province, only: [:index, :show]
  resources :shopping_cart, only: [:index, :show, :edit] do
    member do
      post :remove
    end
    collection do
      post :remove_all
    end
  end
  resources :charges, only: [:new, :create]

  root to: 'product#index'
end
