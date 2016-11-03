class RoutesController < ApplicationController
  def index
    @routes = Route.all
    @routes
    render :json => @routes
    # respond_to :json
  end

end
