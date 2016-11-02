class RoutesController < ApplicationController
  def index
    @routes = Route.all
    respond_to :json
  end
end
