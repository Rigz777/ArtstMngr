Rails.application.routes.draw do

  root 'dashboard#home'

  get 'map' => "map#show", as: :map

  get 'welcome' => 'welcome#index', as: :welcome

  get 'events/:event_id/charges/send' => 'events#send_invoice', as: :send_invoice
  get 'events/:id' => 'events#details', as: :details
  get 'events/:id/show.pdf' => 'events#show', as: :show_event
  get 'events' => 'events#new', as: :new_event
  post 'events' => 'events#create'
  get 'events/:id/edit' => 'events#edit', as: :edit_event
  patch 'events/:id' => 'events#update', as: :update_event

  delete 'events/:id' => 'events#delete', as: :delete_event

  get 'sign_in' => 'sessions#new', as: :sign_in
  post 'sign_in' => 'sessions#create'
  delete 'sign_in' => 'sessions#delete', as: :sign_out

  get 'sign-up' => 'accounts#new', as: :new_account
  post 'sign-up' => 'accounts#create'


  get 'events/:event_id/charges/new' => 'charges#new', as: :new_charge
  post 'events/:event_id/charges' => 'charges#create', as: :charges

end
