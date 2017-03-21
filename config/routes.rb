Rails.application.routes.draw do
  root 'static_pages#home'
  get '/search', to: 'static_pages#search'
  get '/signup', to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get '/instructors', to: 'instructors#index'
  get '/subjects',   to: 'subjects#index'
  get '/courses',    to: 'courses#index'
  resources :users
  resources :instructors, only: [:index]
  resources :subjects, only: [:index]
  resources :courses, only: [:index]
end
