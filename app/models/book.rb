class Book < ActiveRecord::Base
  validates :title, :description, :isbn, :price, :author, presence: true
  
  has_many :reviews
  has_one :analytic

  def cart_action(current_user_id)
    if $redis.sismember "cart#{current_user_id}", id
      "Remove from"
    else
      "Add to"
    end
  end


end
