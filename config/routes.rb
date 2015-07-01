Rails.application.routes.draw do
  root "locations#index"

  resources :locations do
    resources :reviews
  end
end
