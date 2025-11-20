class TasksController < ApplicationController
  def index
    tasks = Task.all
    render json: tasks
  end

  private
  def todo_params
     params.require(:task).permit(:name, :user_id, :deadline_at)
  end
end
