class ReviewsController < ApplicationController
  def create
    @book = Book.find(params[:book_id])
    @review = @book.reviews.create(review_params)
    redirect_to book_path(@book)
    #@review.save
  end

  def update
    @review.update(review_params)
  end

  def destroy
    @review.destroy
  end

  private
  def review_params
    params.require(:review).permit(:review, :user)
  end
end
