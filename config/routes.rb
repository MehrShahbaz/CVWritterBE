# frozen_string_literal: true

Rails.application.routes.draw do
  get 'up' => 'rails/health#show', as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  namespace :api do
    namespace :v1, defaults: { format: :json } do
      resources :users
      resources :jobs
      resources :organizations, :skills
    end
  end
end
