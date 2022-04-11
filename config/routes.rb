Rails.application.routes.draw do
  
  get 'privacy', to: 'static_pages#privacy'
  
  get 'aktualny_czas', to: 'static_pages#current_time'
end
