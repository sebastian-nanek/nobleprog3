Rails.application.routes.draw do
  
  root to: 'posts#index'

  devise_for :users
  resources :posts
  

  get 'privacy', to: 'static_pages#privacy'
  
  get 'aktualny_czas', to: 'static_pages#current_time'
end
