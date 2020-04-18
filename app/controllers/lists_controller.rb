class ListsController < ApplicationController
  def index
    @lists = current_user.lists
    @list = List.new
  end

  def show
  end

  def new
  end

  def create
    list = current_user.lists.create(list_params)
    if list
      redirect_to lists_path
    end
  end

  def edit
  end

  def update
  end

  def destroy
    binding.pry
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end
end
