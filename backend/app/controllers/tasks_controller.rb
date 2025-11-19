class TasksController < ApplicationController
  def index
    @tasks = Task.all
    render json: @tasks
  end

  def create
    @task = Task.new(todo_params)
    if @task.save
      render json: @task, status: :created
    else
      render json: @task, status: :unprocessable_content
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def todo_params
     params.require(:task).permit(:name, :user_id, :deadline_at)
  end
end
