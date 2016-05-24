class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
    @items = Item.new
  end

  def edit
    @items = Item.find(params[:id])
  end

  def show
    @item = Item.find(params[:id])
  end

  def create
    @items = Item.new(item_params)

    if @items.save
      redirect_to items_path
    else
      render :new
    end
  end

  private

  def item_params
    params.require(:item).permit(:name, :description, :boolean)
  end

end
