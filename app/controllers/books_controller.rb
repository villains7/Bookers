class BooksController < ApplicationController
  def index
   @book = Book.new
   @books = Book.all
  end

  def create
   book = Book.new(book_params)
   book.save
   flash[:create] ="Book was successfully created!"
   redirect_to book_path(book.id)
  end

  def show
  @book = Book.find(params[:id])
  end

  def edit
   @book = Book.find(params[:id])
  end


  def update
  book = Book.find(params[:id])
  book.update(book_params)
  flash[:update] = "Book was successfully update!"
  redirect_to book_path(book.id)
  end

  def destroy
  book = Book.find(params[:id])
  book.destroy
  redirect_to '/books'
  flash[:delete] ="Book was successfully destroyed."
  end


 private
  def book_params
  params.require(:book).permit(:title,:body)
  end
end
