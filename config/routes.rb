Rails.application.routes.draw do
  namespace :api do
    resources :drinks, only: [:index, :show, :create, :destroy]
  end


  resources :drinks
end
