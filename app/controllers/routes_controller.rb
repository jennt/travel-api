class RoutesController < ApplicationController

  attr_accessor :route, :crew, :name, :street, :city, :state, :zip

  def index
    @routes = Route.all
    @routes
    render :json => @routes
    # respond_to :json
  end

  def show
    @routes = Route.all
    @routes = @routes.group_by {|x| x['route']}

    render :json => @routes

  end

  def create
    @route = Route.new(route: params['route'], crew: params['crew'], name: params['name'], street: params['street'], city: params['city'], state: params['state'], zip: params['zip'])

    if @route.save
      render :json => @route
    else
      render_error @route.errors.full_messages
    end
  end


  def update
    @route = Route.find(params[:id])

    if @route.update(route: params['route'], crew: params['crew'], name: params['name'], street: params['street'], city: params['city'], state: params['state'], zip: params['zip'])
      render :json => @route
    else
      render_error @route.errors.full_messages
    end
  end

  # def delete
  #   @route = Route.find(params[:id])


#   private
#
#   # def route_params
#   #   params.require(:route).permit(:route, :name, :street, :city, :state, :zip)
#   # end
#
end
