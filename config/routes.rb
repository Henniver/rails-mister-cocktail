Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # A user can see the list of cocktails
  # A user can see the details of a given cocktail, with the dose needed for each ingredient
  # GET "cocktails/42"
  # A user can create a new cocktail
  # GET "cocktails/new"
  # POST "cocktails"
  resources :cocktails, only: [:index, :new, :create, :show] do
    resources :doses, only: [:new, :create]
  end
  resources :doses, only: :destroy
end
