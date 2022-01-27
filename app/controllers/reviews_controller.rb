class ReviewsController < ApplicationController
  def new
    @professionel = Professionel.find(params[:professionel_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @professionel = Professionel.find(params[:professionel_id])
    @review.user = current_user
    if @review.save
      redirect_to professionels_path
    else
      flash[:alert] = "Something went wrong."
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
