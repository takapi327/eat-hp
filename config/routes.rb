Rails.application.routes.draw do
  devise_for :owners
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'menus#index'
  get 'lunches' => 'lunches#index'
  resources :notices, only: [:index, :new, :create, :show, :destroy]
end
