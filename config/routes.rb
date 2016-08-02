Rails.application.routes.draw do

  root 'dashboard#home'

  get 'map' => "map#show", as: :map

  get 'welcome' => 'welcome#index', as: :welcome

  get 'events/:id'  => 'events#show', as: :show_event
  get 'events' => 'events#new', as: :new_event
  post 'events' => 'events#create'



  get 'sign_in' => 'sessions#new', as: :sign_in
  post 'sign_in' => 'sessions#create'
  delete 'sign_in' => 'sessions#destroy', as: :sign_out

  get 'sign-up' => 'accounts#new', as: :new_account
  post 'sign-up' => 'accounts#create'

end
