Rails.application.routes.draw do
  resources :maps, only: [:index, :show, :create]
  root to: 'maps#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
