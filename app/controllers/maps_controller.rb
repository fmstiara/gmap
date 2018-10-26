class MapsController < ApplicationController
  def index
    @maps = Map.all
  end

  def show
    @map = Map.find(params[:id])
  end

  def create
    @map = Map.new(map_params)

    if @map.save
      redirect_to @map, notice: 'Map was successfully created.'
    else
      render :index 
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def map_params
      params.require(:map).permit(:address, :longitude, :latitude)
    end
end
