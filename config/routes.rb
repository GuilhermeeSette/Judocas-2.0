Rails.application.routes.draw do
  resources :judocas do
    put 'activate_filiation', to: "judocas#activate_filiation"
  end
  root to: 'dashboard#show'
  resources :entidades
  resources :faixas
  resources :professors
  resources :alunos
end