class OutputsController < ApplicationController
  def index
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

  private
  def output_params
    params.require(:output).permit(:title, :detail, :post_date, :genre_id).merge(user_id: current_user.id)
  end
end
