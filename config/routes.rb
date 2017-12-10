Rails.application.routes.draw do
  resources :subscriptions do
    resources :memberships, path: :users, module: :subscriptions
  end

  resources :photos
  resources :crytosubscriptions
  resources :tags
  resources :blogs
  resources :buybitcoins
  resources :sellbitcoins
  devise_for :users
  resources :users, :only => [:show, :index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "blogs#index"
  match 'aboutus', to: 'static_pages#aboutus', via: 'get'
  match 'home', to: 'static_pages#home', via: 'get'
  match 'faq', to: 'static_pages#faq', via: 'get'
  match 'dashboard', to: 'static_pages#dashboard', via: 'get'
end
