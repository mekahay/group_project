Rails.application.routes.draw do
  resources :quotes
  resources :users do 
    resources :quotes, only: [:create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
