Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :events
  resources :articles
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  get '/article/delete' => 'articles#destroy'
  get '/article/:id/edit' => 'articles#edit'
  post 'events/join'
  post 'events/quit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
