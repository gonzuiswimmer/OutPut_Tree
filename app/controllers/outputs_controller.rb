class OutputsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @outputs = Output.all
  end

  def new
    @output = Output.new
  end

  def create
    @output = Output.new(output_params)
    if @output.valid?
      @output.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @output = Output.find(params[:id])
  end

  def update
    @output = Output.find(params[:id])
    if @output.update(output_params)
      redirect_to root_path
    else 
      render 'edit'
    end 
  end

  private
  def output_params
    params.require(:output).permit(:title, :detail, :post_date, :genre_id).merge(user_id: current_user.id)
  end

end
