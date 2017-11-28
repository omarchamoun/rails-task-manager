class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]
  def index
    #i want to display all tasks
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
    #i want to display 1 task
  end

  def new
    @task = Task.new
    #ask user to pick which task
  end

  def create
    #picked task should be added to TODO List
    @task = Task.new(task_params)
    @task.save
    redirect_to task_path(@task)
  end

  def edit
    #Form
    #ask user for input
    @task = Task.find(params[:id])
  end

  def update
    #update database with user information
    @task = @task.update(task_params)
    @task.save
    redirect_to task_path(@task)
  end

  def destroy
    #delete item in database
    @task.destroy
    redirect_to tasks_path(@tasks)
  end

  private

  def task_params
    params.require(:task).permit(:name, :description)
  end

  def set_task
    @task = Task.find(params[:id])
  end

end
