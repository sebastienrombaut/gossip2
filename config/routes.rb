Rails.application.routes.draw do

  devise_for :moussaillons

  resources :ragots

  root 'static_pages#home'

end
