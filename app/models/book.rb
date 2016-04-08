class Book < ActiveRecord::Base
   validates :title, :description, :isbn, :price, :author, presence: true
end
