Rails.application.routes.draw do
  resources :keg_floors
  resources :cups
  resources :floors
  resources :kegs
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
