class TodosController < ApplicationController
  before_action :set_todo, only: [:show, :update, :edit, :destroy]
  respond_to :json

  def index
    @todos = Todo.all
  end

  def show
    respond_with @todo
  end

  def new
    @todo = Todo.new
  end

  def edit
    respond_with @todo
  end

  def create
    respond_with Todo.create(todo_params)
  end

  def update
    respond_with @todo.update_attributes(todo_params)
  end

  def destroy
    respond_with @todo.destroy
  end

  private
    def set_todo
      @todo = Todo.find(params[:id])
    end

    def todo_params
      params.require(:todo).permit(:title, :category_id, :body, :complete, :up_votes).reject { |k,v| v.nil? }
    end
end
