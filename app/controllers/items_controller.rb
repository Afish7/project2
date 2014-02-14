class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    Item.create (Item_params)
    redirect_to new_item_path
  end

  def destroy

  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    i = Item.find(params[:id])
    i.update(item_params)
    redirect_to items_path
  end



  private

  def item_params
    params.require(:item).permit(
      :name, :image,
      availabilites_attributes: [:name, :quantity, :price, :is_acquired, :id]
    )
  end
end
