class ReviewsController < ApplicationController
    def new
    @space = Space.find(params[:space_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @space = Space.find(params[:space_id])
    @review.space = @space
    if @review.save
      redirect_to space_path(@space)
    else
      render 'spaces/show'
    end
  end

  def show
    @space = Space.find(params[:id])
    @review = Review.new
  end

  private

  def review_params
    params.require(:review).permit(:content, :stars)
  end
end
