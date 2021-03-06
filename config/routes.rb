Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: "rails_admin"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root "static_pages#index"
  #get 'static_pages/index'
  get "sobre", to: "static_pages#about",   as: :about
  get "contato", to: "static_pages#contact", as: :contact 
end
