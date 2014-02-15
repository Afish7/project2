class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end
  

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to items_path, notice: 'Item was successfully created!'
    else
      render action: 'new'
    end
  end

  def destroy
    Item.find(params[:id]).destroy
    redirect_to items_path
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    if @item.update(item_params)
    redirect_to items_path, notice: 'Item was successfully updated.'
    else
    render action: 'edit'
    end
  end



  private

  def item_params
    params.require(:item).permit(
      :name, :quantity, :price, :is_acquired
      
    )
  end
end
