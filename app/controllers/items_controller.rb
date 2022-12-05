class ItemsController < ApplicationController
  before_action :set_output

  def new
    @item = Item.new
  end

  def show
  end

  def edit
  end

  private
  def set_output
    @output = Output.find(params[:output_id])
  end

  def item_params
    params.require(:item).permit(:item_name, :item_detail, :price).merge(user_id: current_user.id, output_id: params[:id])
  end
end
