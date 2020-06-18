Rails.application.routes.draw do
  resources :judocas
  root to: 'dashboard#show'
  resources :entidades
  resources :faixas
  resources :professors
  resources :alunos
end