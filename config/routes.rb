require "sidekiq/web"

Rails.application.routes.draw do
  mount Sidekiq::Web => "/sidekiq" # monitoring console
  devise_for :users, path: 'users'
  devise_for :admins, path: 'admin'

  namespace :admin do
    resources :dashboard
    resources :events
    resources :campaigns do
      resources :offline_donation
    end
  end

  post '/hooks' => 'hooks#stripe'
  get '/my-campaigns', to: 'my_campaigns#index'
  resources :charities
  resources :events, only: :show do
    resources :campaigns do
      resources :donations do
        get 'payment'
      end
    end
  end
  root to: "home#index"
end
