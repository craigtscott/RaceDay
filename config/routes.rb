Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    get 'tag/index'
  end

  root "static_pages#root"

  namespace :api, defaults: {format: :json} do
    resources :users, only: [:create, :show]
    resources :teams, only: [:index, :create, :update, :show, :destroy]
    resources :races, only: [:create, :destroy, :index]
    resource :session, only: [:create, :destroy]
  end
end
