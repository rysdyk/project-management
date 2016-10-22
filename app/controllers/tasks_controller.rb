class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
    @checklists = Checklist.all
  end

  def create
    @task = Task.new(task_params)

    @task.save

    redirect_to @task
  end

  def edit
    @task = Task.find(params[:id])
    @checklists = Checklist.all
  end

  def update
    @task = Task.find(params[:id])
    if @task.update_attributes(task_params)
      redirect_to @task
    else
      render 'edit'
    end
  end

  def destroy
  end

  private

  def task_params
    params.require(:task).permit(:name, :due_date, :checklist_id)
  end

end
