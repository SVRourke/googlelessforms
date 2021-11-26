Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  # Users > forms > inputs | submissions
  
  # Auth
    post "login", to: "auth#create"
    delete "login", to: "auth#destroy"

  # Users
  # TODO: add destroy
  resources :users, only: [:create] do
    resources :forms, only: [:index, :show, :create, :destroy] do
      resources :inputs, only: [:index, :create, :destroy]
    end
  end

  resources :form, only: [] do
    resource :submissions, only: [:create]
  end

end
