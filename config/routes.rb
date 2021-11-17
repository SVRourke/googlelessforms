Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  # Users > forms > inputs | submissions
  
  # Auth
    post "login", to: "auth#create"
    delete "login", to: "auth#destroy"

  # Users
  # TODO: add destroy
  resources :user, only: [:new, :create] do
    resources :forms, only: [:index, :show, :new, :create, :destroy]
  end

  resource :form, only: [] do
    resource :submissions, only: [:new, :create]
  end

end
