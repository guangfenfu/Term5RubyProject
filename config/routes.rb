Rails.application.routes.draw do
  get 'about/index'
  get 'user_snap_shot/index'
  get 'user_snap_shot/show'
  get 'product_snap_shot/index'
  get 'product_snap_shot/show'
  get 'customer/index'
  get 'province/index'
  get 'tax/index'
  # get 'product' => 'product#index'
  get 'product/show'
  get 'category/index'
  get 'brand/index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :order
  resources :product, only: [:index, :show]
  resources :brand
  resources :category
  resources :product_category

  root to: 'product#index'
end
