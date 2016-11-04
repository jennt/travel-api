Rails.application.routes.draw do

  # root 'routes#index'

  get '/' => 'routes#index'

  get '/routes' => "routes#index"

  post '/' => 'routes#create'

  get '/show/:route' => 'routes#show'
  #
  # patch '/' => 'routes#update'

end
