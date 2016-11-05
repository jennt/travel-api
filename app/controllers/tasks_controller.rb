class TasksController < ApplicationController
  attr_accessor :route_id, :task_name, :completed

  def index
    @tasks = Route.find(params[:id]).tasks
    render :json => @tasks
  end
  #
  # # def show
  # #   @tasks = Task.all
  # #   @tasks = @tasks.group_by {|x| x['route']}
  # #
  # #   render :json => @tasks
  # # end

  def create
    @task = Task.new(route_id: params['route_id'], task_name: params['task_name'], completed: params['completed'])

    if @task.save
      render :json => @task
    else
      render_error @task.errors.full_messages
    end
  end
  #
  def update
    @task = Task.find(params[:id])

    if @task.update(task_name: params['task_name'], completed: params['completed'] )
      render :json => @task
    else
      render_error @task.errors.full_messages
    end
  end

  def destroy
    task = Task.find(params[:id])
    if task.destroy
      render :json => Route.where(id: task.route_id)
    else
      render_error task.errors.full_messages
    end
  end
end
