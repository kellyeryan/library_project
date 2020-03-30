# frozen_string_literal: true

class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    if @review.save
      redirect_to @review
    end
  end

  def show
    @review = Review.find(params[:id])
  end

private
  def review_params
    params.require(:review).permit(:book,
                                  :patron,
                                  review: [:body])
  end
end
