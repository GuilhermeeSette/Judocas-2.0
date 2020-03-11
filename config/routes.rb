Rails.application.routes.draw do
  root to: 'dashboard#show'
  resources :entidades
  resources :faixas
  resources :professors
  resources :alunos
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
