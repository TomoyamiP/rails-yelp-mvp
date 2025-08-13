Rails.application.routes.draw do
  resources :restaurants do
    resources :review, only: [:new, :create]
  end
  resources :reviews, only: [:destroy]
end
