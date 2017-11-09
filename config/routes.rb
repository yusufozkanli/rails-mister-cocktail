Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [ :show, :create, :new, :index] do
    resources :doses, only: [ :new, :create ]
  end
  root to: "cocktails#index"
  resources :doses, only: [:destroy]
end

