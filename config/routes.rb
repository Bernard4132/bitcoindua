Rails.application.routes.draw do

  resources :courses
  resources :eblasts do
    collection { post :import }
  end
  
  resources :newsletters
  resources :contacts
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
  match 'terms', to: 'static_pages#terms', via: 'get'
  match 'advertise', to: 'static_pages#advertise', via: 'get'
  match 'dashboard', to: 'static_pages#dashboard', via: 'get'
  match 'thankyou', to: 'static_pages#thankyou', via: 'get'
  match 'bitcoincrashcourse', to: 'static_pages#bitcoincrashcourse', via: 'get'
end
