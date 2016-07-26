Rails.application.routes.draw do
  root 'welcome#index'

  get 'dashboard/index'

  get 'dashboard/show'

  get 'dashboard/new'

end
