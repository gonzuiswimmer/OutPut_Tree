class OutputsController < ApplicationController
  def index
  end

  def new
    @output = Output.new
  end
end
