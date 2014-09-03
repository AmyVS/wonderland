class LinesController < ApplicationController

  def index
    @lines = Line.all
  end

  def new
    @line = Line.new
  end

  def create
    @line = Line.create(lines_params)
    if @line.valid?
      @line.station_ids = params[:line][:station_ids]
      flash[:notice] = "Line created."
      redirect_to lines_path
    else
      render 'new'
    end
  end

  def show
    @line = Line.find(params[:id])
  end

  def edit
    @line = Line.find(params[:id])
  end

  def update
    @line = Line.find(params[:id])
    if @line.update(lines_params)
      flash[:notice] = "Line updated."
      redirect_to line_path(@line)
    else
      render 'edit'
    end
  end

  def destroy
    @line = Line.find(params[:id])
    @line.destroy
    flash[:notice] = "Line deleted."
    redirect_to lines_path
  end

private
  def lines_params
    params.require(:line).permit(:id, :name, station_ids: [])
  end
end
