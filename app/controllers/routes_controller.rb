class RoutesController < ApplicationController
  def index
    @routes = Route.all
    @routes
    render :json => @routes
    # respond_to :json
  end

  def create
    @route = Route.new(route: params['route'], name: params['route'], street: params['street'], city: params['city'], state: params['state'], zip: params['zip'])

    if @route.save
      render :json => @route
    else
      render_error @route.errors.full_messages
    end
  end

  def update
    @route = Route.find params[:id]

    if @route.update route_params
      render :json => @route
    else
      render_error @route.errors.full_messages
    end
  end

  private

  # def route_params
  #   params.require(:route).permit(:route, :name, :street, :city, :state, :zip)
  # end

end
