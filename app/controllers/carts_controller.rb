class CartsController < ApplicationController

  def show
    cart_ids = $redis.smembers current_user_cart
    @cart_books = Book.find(cart_ids)
    @total = 0
    if @cart_books.size > 0
      @cart_books.each do |book|
        @total = @total + book.price
      end
    end
  end

  def add
    $redis.sadd current_user_cart, params[:book_id]
    redirect_to request.referer
  end

  def remove
    $redis.srem current_user_cart, params[:book_id]
    redirect_to request.referer
  end

  private
  def current_user_cart
    "cart#{session.id}"
  end
end
