class TasksController < ApplicationController

  def index
  end

  def show
    redirect_to root_path
  end

  def new
  end

  def create
    @task = Task.new
    @task.done = false
    @task.user_id = current_user.id
    if @task.update_attributes(task_params)
      redirect_to root_path, notice: "Success"
    else
      redirect_to root_path, notice: "Error"
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to root_path
  end

  def destroy_all
    current_user.tasks.destroy_all
    redirect_to root_path
  end

  private

    def task_params
      params.require(:task).permit(:content)
    end
end
