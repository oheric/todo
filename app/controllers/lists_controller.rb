class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def create
    @list = List.new(list_params)
    @list.save
    redirect_to lists_path
  end

  def list_params
    params.require(lists).permit(:name)
  end
  
end