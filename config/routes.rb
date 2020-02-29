Rails.application.routes.draw do
  resources :entidades
  resources :faixas
  resources :professors
  resources :alunos
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
