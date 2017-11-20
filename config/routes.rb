Rails.application.routes.draw do
  resources :tags
  resources :blogs
  resources :buybitcoins
  resources :sellbitcoins
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "static_pages#home"
  match 'aboutus', to: 'static_pages#aboutus', via: 'get'
  match 'faq', to: 'static_pages#faq', via: 'get'
end
