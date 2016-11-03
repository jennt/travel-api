class RoutesController < ApplicationController
  def index
    @routes = Route.all
    @routes.to_json
    # respond_to :json
  end

end
