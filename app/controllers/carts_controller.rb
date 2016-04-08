class CartsController < ApplicationController

  def show
    cart_ids = $redis.smembers current_user_cart
    @cart_books = Book.find(cart_ids)
  end

  def add
    $redis.sadd current_user_cart, params[:book_id]
    redirect_to request.referer
  end

  def remove
    $redis.srem current_user_cart, params[:book_id]
    redirect_to request.referer
  end

  def empty?
    @cart_books.size == 0
  end
  private
  def current_user_cart
    "cart#{session.id}"
  end
end
