class ReviewsController < ApplicationController

  def new
    @city = City.find_by(id: params["city_id"])
    @review = Review.new
  end

  def create
    @city = City.find_by(id: params["city_id"])
    review_params = params.require(:review).permit(:body, :rating)
    @review = @city.reviews.new(review_params)
    @review.user = current_user
    if @review.save
      redirect_to @city, notice: "Thanks for the review!"
    else
      render "new"
    end
  end

end
