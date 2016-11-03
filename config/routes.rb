Rails.application.routes.draw do

  # root 'routes#index'

  get '/' => 'routes#index'

  get '/routes' => "routes#index"

  # post '/' => 'routes#create'
  #
  # patch '/' => 'routes#update'

end
