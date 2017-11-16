Rails.application.routes.draw do
  resources :plays
  root 'movies#index'
end
