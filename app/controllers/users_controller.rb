class UsersController < ApplicationController
  # GET /Users
  def index
    render :index, locals: { users: User.all }
  end

  def todo_params
    params.require(:todo).permit(:title, :is_completed)
  end

  def filtering_params
    params.slice(:completed).to_unsafe_h
  end
end
