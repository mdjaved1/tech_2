Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get 'tv_shows/results'

  get 'tv_shows/show'

  root 'welcome#index'
  
end
