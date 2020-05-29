Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [:show, :index, :new, :create] do
    resources :doses, only: [:new, :create]
  end
  # resources :ingrediens
  # resources :doses
end
