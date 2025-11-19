class TasksController < ApplicationController
  def index
    @tasks = Task.all
    render json: @tasks
  end

  def create
    @task = Task.new(todo_params)
    # binding.irb
    if @task.save
      render json: @task, status: :created
      # binding.irb
    else
      render json: @task, status: :unprocessable_content
      # binding.irb
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
