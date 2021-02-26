Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # A user can see the list of cocktails x
  # A user can see the details of a given cocktail, with the dose needed for each ingredient x still need to add dose
  # A user can create a new cocktail x
  # A user can add a new dose (ingredient/description pair) to an existing cocktail x
  # A user can delete a dose that belongs to an existing cocktail. How can we make a delete link again? x

  resources :cocktails, only: [:index, :new, :create, :show] do
    resources :doses, only: :create
  end
  resources :doses, only: :destroy
end
