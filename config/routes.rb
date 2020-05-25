Rails.application.routes.draw do
  root to: 'dashboard#show'
  resources :entidades
  resources :faixas
  resources :professors
  resources :alunos, path: 'alunos' do
    collection do
      match ":id/become_professor", as: "become", action: "become_professor", via: [:get]
    end
  end
end
