Rails.application.routes.draw do
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts, :only => [:new, :create, :index]
  root to: 'posts#index'
end
