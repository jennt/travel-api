class RoutesController < ApplicationController

  attr_accessor :route, :crew, :name, :street, :city, :state, :zip

  def index
    add_each_task_list

    render :json => @routes
  end

  def show
    add_each_task_list
    @routes = @routes.group_by {|x| x['route']}

    render :json => @routes

  end

  def search
    @routes = Route.where(route: params[:route])
    @routes.each { |r| r.task_list = Task.where(route_id: r.id) }

    render :json => @routes
  end

  def create
    @route = Route.new route_params

    add_task_list

    if @route.save
      render :json => @route
    else
      render_error @route.errors.full_messages
    end
  end

  def update
    @route = Route.find(params[:id])

    add_task_list

    if @route.update route_params
      render :json => @route
    else
      render_error @route.errors.full_messages
    end
  end

  def destroy
    @location = Route.find(params[:id])

    if @location.destroy
      add_each_task_list
      render :json => @routes
    else
      render_error @location.errors.full_messages
    end
  end

  def add_each_task_list
    @routes = Route.all
    @routes.each { |r| r.task_list = Task.where(route_id: r.id) }
  end

  def add_task_list
    @route.task_list = Task.where(route_id: @route.id)
  end

  private

  def route_params
    params.permit(:route, :crew, :name, :street, :city, :state, :zip)
  end
#
end
