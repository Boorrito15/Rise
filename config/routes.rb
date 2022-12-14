Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index
  resources :dragons, only: [:create, :new, :index, :show, :edit, :update] do
    resources :bookings, only: [:create, :edit, :index, :update, :new, :show]
  end

  resources :bookings, only: [:edit, :index, :update, :show]
end
