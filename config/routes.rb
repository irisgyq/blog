Rails.application.routes.draw do
  get 'welcome/index'

  resources :category

  resources :articles do
  		resources :comments
  end
  
  resources :photos
  resources :self
  resources :resume

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
