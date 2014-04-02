class TodosController < ApplicationController
  def index
    @todos = Todo.all
  end

  def show
    @todo = Todo.find(params[:id])
  end

  def new
    @todo = Todo.new
  end
  
  def create
      @todo = Todo.new(params[:todo])
  if @todo.save
    flash[:notice] = "Todo List was saved."
    redirect_to @todo
  else
    flash[:error] = "There was an error saving the Todo List. Please try again."
    render :new
  end

  end
  def edit
    @todo = Todo.find(params[:id])
  end

  def update
    @post = Todo.find(params[:id])
    if @todo.update_attributes(params[:todo])
      flash[:notice] = "Todo was updated."
      redirect_to @todo
    else
      flash[:error] = "Todo list not saved. Please try again."
      render :edit
    end
  end
end
