class OrdersController < ApplicationController
  before_action :set_item, only: [:index, :create]

  def index
    @order = Order.new
  end

  def create
    binding.pry
    @order = Order.new(order_params)
    if @order.valid?
      @order.save
      return redirect_to root_path
    else
      render 'index'
    end
  end

  private
  def set_item
    @item = Item.find(params[:item_id])
  end

  def order_params
    params.require(:order).merge(token: params[:token], user_id: current_user.id, item_id: params[:item_id])
  end
end
