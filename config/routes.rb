# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :v1 do
    namespace :swapi do
      resources :planets, only: [:index]
    end
  end
end
