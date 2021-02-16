Rails.application.routes.draw do
  devise_for :users, controllers: { study_sessions: 'skills/study_sessions' }
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:show] do
    resources :skills, only: [:new, :create, :edit, :update, :delete]
  end

  resources :skills, only: [:show] do
    resources :milestones, only: [:new, :create, :edit, :update]
    resources :study_sessions, only: [:new, :create]
  end

  resources :study_sessions, only: [:index, :edit, :update]

end
