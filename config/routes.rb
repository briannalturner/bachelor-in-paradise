Rails.application.routes.draw do
  resources :relationships
  resources :men
  resources :women
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
