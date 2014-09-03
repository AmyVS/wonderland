class StopsController < ApplicationController

  def index
    @stops = Stop.all
  end

  def new
    @stop = Stop.new
  end

  def create
    @stop = Stop.create(stops_params)
    if @stop.valid?
      flash[:notice] = "Stop created."
      redirect_to stops_path
    else
      render 'new'
    end
  end

  def show
    @stop = Stop.find(params[:id])
  end

  def edit
    @stop = Stop.find(params[:id])
  end

  def update
    @stop = Stop.find(params[:id])
    if @stop.update(stops_params)
      flash[:notice] = "Stop updated."
      redirect_to stop_path(@stop)
    else
      render 'edit'
    end
  end

  def destroy
    @stop = Stop.find(params[:id])
    @stop.destroy
    flash[:notice] = "Stop deleted."
    redirect_to stop_path
  end

private
  def stops_params
    params.require(:stop).permit(:id, :name)
  end
end
