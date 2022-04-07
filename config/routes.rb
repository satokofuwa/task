Rails.application.routes.draw do

  root "supports#index"
  resources :supports
  resources :users
  

end
