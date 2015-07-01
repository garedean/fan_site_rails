class LocationsController < ApplicationController

  def index
    @location = Location.new
    @locations = Location.all
    render :index
  end

  def show
    @location = Location.find(params[:id])
    render :show
  end

  def new
    @location = Location.new
    render :new
  end

  def create
    @location = Location.new(location_params)
    if @location.save
      redirect_to locations_path
    else
      render :new
    end
  end

  def edit
    @location = Location.find(params[:id])
  end

  def update
    @location = Location.find(params[:id])
    if @location.update(location_params)
      redirect_to location_path(@location)
    else
      render :edit
    end
  end

  def destroy
    @location = Location.find(params[:id])
    @location.destroy
    redirect_to root_path
  end

  private
  def location_params
    params.require(:location).permit(:name)
  end

end
