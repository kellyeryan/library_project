# frozen_string_literal: true
# frozen_string_literal: true

class ReviewsController < ApplicationController
  def create
    @review = Review.create(review_params)
  end

  def show
    @review = Review.find(params[:id])
  end

private

  def review_params
    params.require(:review).permit(:book_id, :patron_id, :comment)
  end
end
