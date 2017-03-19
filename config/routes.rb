Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resource :books
  resources :posts do
      resources :replies
  end
  root "home#index"
end
