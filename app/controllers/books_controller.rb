class BooksController < ApplicationController
  def index
   @book = Book.new
   @books = Book.all
  end
  def create

  end


end
