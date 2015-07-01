class LocationsController < ApplicationController

  def index
    @location = Location.new
    if params[:sort] == 'true'
      @locations = Location.sort(:asc)
    else
      @locations = Location.sort(:desc)
    end
  end

  def show
    @location = Location.find(params[:id])
    @review = @location.reviews.new
    render :show
  end

  def new
    @location = Location.new
    render :new
  end

  def create
    @location = Location.new(location_params)
    @locations = Location.all
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
    params.require(:location).permit(:name, :description, :sort)
  end

end
