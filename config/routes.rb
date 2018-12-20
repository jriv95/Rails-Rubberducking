Rails.application.routes.draw do
  resources :ducks, only: [:index, :show, :new, :edit, :create, :update]
  resources :students, only: [:index, :show, :new, :edit, :create, :update]
end
