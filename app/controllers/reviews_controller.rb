class ReviewsController < ApplicationController
  def index
    @gear = Gear.find(params[:gear_id])
    @reviews = Review.select { |review| review.gear_id == @gear.id}
  end

  def new
    @gear = Gear.find(params[:gear_id])
    @review = Review.new
  end

  def create
    @gear = Gear.find(params[:gear_id])
    @review = Review.new(params.require(:review).permit(:description, :rating))
    @review.gear = @gear
    @review.user = current_user
    if @review.save
      redirect_to gear_path(@gear)
    else
      render :new
    end
  end
end
