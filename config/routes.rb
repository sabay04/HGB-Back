Rails.application.routes.draw do

  namespace :api do 
    namespace :v001 do 
  resources :area_concerns
  resources :formula_ingredients
  resources :ingredient_concerns
  resources :formula_concerns
  resources :concerns
  resources :categories
  resources :areas
  resources :favourites
  resources :ingredients
  resources :formulas
  resources :users
    end 
  end 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
