Rails.application.routes.draw do

  get 'tasks/:id' => 'tasks#index'

  post 'task/new' => 'tasks#create'

  patch 'task/:id' => 'tasks#update'

  delete 'task/:id' => 'tasks#destroy'

  # root 'routes#index'

  get '/' => 'routes#index'

  get '/routes' => "routes#index"

  post '/' => 'routes#create'

  get '/show' => 'routes#show'

  patch '/location/:id' => 'routes#update'

  delete '/location/:id' => 'routes#destroy'

end
