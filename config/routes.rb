Rails.application.routes.draw do
  resources :libraries, only: [:index, :show] do
    resources :books, only: [:index, :new, :create, :show]
  end

  resources :authors, only: [:index, :new, :create, :show]

  resources :patrons, only: [:show, :new, :create]
  resources :book_loans, only: [:index, :new, :show]
  root "static_pages#home"
  get "/signin", to: "sessions#new"
  post "/signin", to: "sessions#create"
  get "/logout", to: "sessions#destroy"
end
