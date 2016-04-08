class Book::AnalyticsController < ApplicationController
  def create
    @book = Book.find(params[:book_id])
    @book_analytics = @book.book_analytics.create()
  end
end
