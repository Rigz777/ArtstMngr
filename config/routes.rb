Rails.application.routes.draw do

  get 'accounts/new'

  get 'accounts/create'

  root 'dashboard#home'

  get 'welcome' => 'welcome#index', as: :welcome

  get 'sign_in' => 'sessions#new', as: :sign_in
  post 'sign_in' => 'sessions#create'
  delete 'sign_in' => 'sessions#destroy', as: :sign_out

  get 'sign-up' => 'account#new', as: :new_account
  post 'sign-up' => 'account#create'

end
