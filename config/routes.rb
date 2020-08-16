Rails.application.routes.draw do
  root 'posts#index'
  get '/new', to: 'posts#new', as: 'new'
  post '/create', to: 'posts#create', as: 'create'
  get '/show/:id', to: 'posts#show', as: 'show'

  get '/edit/:id', to: 'posts#edit', as: 'edit'

  # resources :posts この書き方は、使うのかどうか？
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
