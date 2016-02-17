class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :destroy]

  def index
    @reviews = Review.all
  end

  def show
  end

  def create
    @review = review.new(review_params)
    if @review.save
      redirect_to @review
    else
      render :new
    end
  end

  def update
    @review.update(review_params)
  end

  def edit
  end

  def destroy
    @review.destroy
  end

private

  def set_review
    @review = Review.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:content, :rating, :restaurant_id)
  end

end
