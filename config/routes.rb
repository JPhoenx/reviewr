Rails.application.routes.draw do
  root 'projects#index'

  resources :projects, only: [:index, :show] do
    resources :reviews, only: [:create, :new, :show]
  end
end
