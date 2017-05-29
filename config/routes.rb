Rails.application.routes.draw do

  mount Shrine::DownloadEndpoint => "/attachments"


  resources :requests do
    resources :photos, except: :index

  end
  get    '/auth/:provider'          => 'omniauth#auth', as: :auth
  get    '/auth/:provider/callback' => 'session#create'
  get    '/auth/failure'            => 'session#failure'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  get '/logout' => 'session#destroy'


  get 'home/index'
  get 'home/landing'
  get 'home/home'
  get '/photos' => 'photos#index'

  root 'home#landing'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
