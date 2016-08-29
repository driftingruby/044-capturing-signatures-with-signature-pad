Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }

  resources :documents, only: [:new, :create], path: :terms_and_conditions
  
  get :private_content, to: 'visitors#private_content'
  root 'visitors#index'
end
