class ListsController < ApplicationController
  def new
    @list = List.new
  end

  def create
    @list = list.new(list_params)
    if @list.save
      redirect_to lists_path
    else
      render action: 'new'
    end    
  end

  def destroy
    list.find(params[:id]).destroy
    redirect_to lists_path
  end

  def show

  end

  def index
    @lists= List.all
  end

  def edit
    @list.find(params[:id])
  end

  def update
    @list = List.find(params[:id])
if @item.update(list_params)
  redirect_to lists_path
else
  render action: 'edit'
end
    end