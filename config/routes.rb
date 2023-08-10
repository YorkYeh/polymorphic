Rails.application.routes.draw do

  resources :books do
    resources :comments, only: [:create], module: 'book'
  end

  resources :products do
    resources :comments, only: [:create], module: 'product'
  end
end
