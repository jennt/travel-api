class RoutesController < ApplicationController

  attr_accessor :route, :name, :street, :city, :state, :zip

  def index
    @routes = Route.all
    @routes
    render :json => @routes
    # respond_to :json
  end

  def create
    @route = Route.new(route: params['route'], name: params['name'], street: params['street'], city: params['city'], state: params['state'], zip: params['zip'])

    if @route.save
      render :json => @route
    else
      render_error @route.errors.full_messages
    end
  end

  def show
    @routes = Route.all
    grouped_routes = []
    @routes.each do |r|
      # unless grouped_routes.find((0..-1).keys.include?(r.route))
        grouped_routes << { "#{r.route}" => Route.where(route: r.route)}
      end
        # grouped_routes << { "#{r.route}" => Route.select(route: r.route)}
      # end

    render :json => grouped_routes

  end

  # def update
  #   @route = Route.find params[:id]
  #
  #   if @route.update (route: params['route'], name: params['name'], street: params['street'], city: params['city'], state: params['state'], zip: params['zip'])
  #     render :json => @route
  #   else
  #     render_error @route.errors.full_messages
  #   end
  # end

#   private
#
#   # def route_params
#   #   params.require(:route).permit(:route, :name, :street, :city, :state, :zip)
#   # end
#
end
