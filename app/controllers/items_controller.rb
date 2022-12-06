class ItemsController < ApplicationController
  before_action :set_output
  before_action :set_item, only: [:create]

  def new
    @item = Item.new
  end

  def show
    @item = Item.find(params[:output_id])
  end

  def edit
    @output = Output.find(params[:id])
    @item = Item.find(params[:output_id])
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render 'new'
    end
  end


  def update
    @item = Item.find(params[:id])
    if @item.update(item_params)
      redirect_to root_path
    else 
      render 'edit'
    end 
  end

  def destroy
    @item = Item.find(params[:output_id])
    @item.destroy
    redirect_to root_path
  end

  private
  def set_output
    @output = Output.find(params[:output_id])
  end

  def item_params
    params.require(:item).permit(:item_name, :item_detail, :price).merge(user_id: current_user.id, output_id: @output.id)
  end

  def set_item
    @item = Item.new
  end
end
