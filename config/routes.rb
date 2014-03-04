PostitTemplate::Application.routes.draw do
  root to: 'posts#index'

  get '/login', to: 'sessions#new'
  post '/login', to: 'session#create'
  get 'logout', to: 'sessions#destroy'

  resources :posts, except: :destroy do
    resources :comments, only: [:create]
  end
  resources :categories, except: [:destroy, :update, :edit]

end
