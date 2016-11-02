class RoutesController < ApplicationController
  def index
    @routes = Route.all
    respond_to :html, :json
  end
end
