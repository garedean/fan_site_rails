class ReviewsController < ApplicationController
  def create
    @location = Location.find(params[:location_id])
    @review = @location.reviews.new(review_params)
    
    if @review.save
      redirect_to location_path(@location)
    else
      redirect_to :back
    end
  end

  private

  def review_params
    params.require(:review).permit(:author, :comment, :rating)
  end
end
