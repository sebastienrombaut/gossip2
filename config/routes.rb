Rails.application.routes.draw do

  get 'static_pages/home'

  root 'static_pages#home'
  
  devise_for :moussaillons

  resources :ragots

end
