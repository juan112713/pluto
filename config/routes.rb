Rails.application.routes.draw do
  resources :usuarios
  resources :ruta
  resources :conductors
  resources :buses
  resources :paraderos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
