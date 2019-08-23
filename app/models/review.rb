class Review < ApplicationRecord
  belongs_to :space
  belongs_to :user

  def new
    @space = Review.find(params[:space_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @space = Space.find(params[:space_id])
    @review.space = @space
    @review.save
    redirect_to space_path(@space)
  end

  private

  def review_params
    params.require(:review).permit(:content, :stars)
  end
end
