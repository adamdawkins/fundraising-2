require "sidekiq/web"

Rails.application.routes.draw do
  root "home#index"
  mount Sidekiq::Web => "/sidekiq" # monitoring console
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
