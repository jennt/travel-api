Rails.application.routes.draw do

  # root 'routes#index'

  get '/' => 'routes#index'

  # get '/routes' => "routes#show"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
