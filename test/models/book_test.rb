require 'test_helper'

class BookTest < ActiveSupport::TestCase
  test "should not save without ALL arguments" do
    book = Book.new
    assert_not book.save, "Save no arguments"

    book = Book.new(:title => "I'm a title")
    assert_not book.save, "Save only title"

    book = Book.new(:title => "I'm a title", :description => "I'm a description")
    assert_not book.save, "Save title description"

    book = Book.new(:title => "I'm a title", :description => "I'm a description", :isbn => 12345678)
    assert_not book.save, "Save title, description, isbn"

    book = Book.new(:title => "I'm a title", :description => "I'm a description", :isbn => 12345678, :price => 12.50)
    assert_not book.save, "save title, description, isbn, price"

    book = Book.new(:title => "I'm a title", :description => "I'm a description", :isbn => 12345678, :price => 12.50, :author => "i'm a author")
    assert book.save, "save all arguments (title, description, isbn, price, author)"

  end

  test "should give me the book" do
    book = books(:one)
    assert_equal book.title, "Release It!: Design and Deploy Production-Ready Software"

    assert_equal book.author, "Michael T. Nygard"
    assert_equal book.isbn, "0978739213"
    assert_equal book.price, 37.72
  end
end
