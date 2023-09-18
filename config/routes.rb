Rails.application.routes.draw do
  devise_for :users

  resources :spendings

  root "spendings#index"
end
