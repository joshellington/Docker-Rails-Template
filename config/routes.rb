Rails.application.routes.draw do
  root "search#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # Almost every application defines a route for the root path ("/") at the top of this file.

  get 'search', to: 'search#index'
  post 'search', to: 'search#index'
end
