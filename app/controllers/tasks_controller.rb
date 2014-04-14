class TasksController < ApplicationController
  def index
    @tasks = Task.all
    @incomplete_tasks = Task.where(done: false)
    @complete_tasks = Task.where(done: true)
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.create(task_params)
    # redirect_to tasks_path
    respond_to do |format|
      format.html { redirect_to tasks_path }
      format.js
    end
  end

  # def edit
  #   @task = Task.find(params[:id])
  # end

  def update
    @task = Task.find(params[:id])
    @task.update(done: true)
    redirect_to tasks_path
  end

  private
  def task_params
    params.require(:task).permit(:name, :done)
  end
end
