class RoutesController < ApplicationController

  attr_accessor :route, :crew, :name, :street, :city, :state, :zip

  def index
    @routes = Route.all
    @routes.each { |r| r.task_list = Task.where(route_id: r.id) }

    render :json => @routes
    # respond_to :json
  end

  def show
    @routes = Route.all
    @routes.each { |r| r.task_list = Task.where(route_id: r.id) }

    @routes = @routes.group_by {|x| x['route']}

    render :json => @routes

  end

  def create
    @route = Route.new route_params#(route: params['route'], crew: params['crew'], name: params['name'], street: params['street'], city: params['city'], state: params['state'], zip: params['zip'], task_list: params['task_list'])

    if @route.save
      render :json => @route
    else
      render_error @route.errors.full_messages
    end
  end


  def update
    @route = Route.find(params[:id])
    @route.task_list = Task.where(route_id: @route.id)

    if @route.update route_params#(route: params['route'], crew: params['crew'], name: params['name'], street: params['street'], city: params['city'], state: params['state'], zip: params['zip'], task_list: params['task_list'])
      render :json => @route
    else
      render_error @route.errors.full_messages
    end
  end

  def destroy
    @location = Route.find(params[:id])
    if @location.destroy
      @routes = Route.all
      @routes.each { |r| r.task_list = Task.where(route_id: r.id) }
      render :json => @routes
    else
      render_error @location.errors.full_messages
    end
  end

  private

  def route_params
    params.permit(:route, :crew, :name, :street, :city, :state, :zip)
  end
#
end
