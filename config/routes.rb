Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :libraries, only: [:index, :show] do
    resources :books, only: [:index, :new, :create]
    # using, shallow nesting, where only collection actions are scoped under the parent
  end
  resources :books, only: [:show]
  resources :patrons, only: [:show, :new, :create]
end
