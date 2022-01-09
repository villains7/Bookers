class BooksController < ApplicationController
  def index
   @book = Book.new
   @books = Book.all
  end

  def create
   @book = Book.new(book_params)
   if @book.save
   redirect_to book_path(@book.id)
   else
    @books = Book.all
   render :index
   end
   flash[:create] ="Book was successfully created!"
  end

  def show
  @book = Book.find(params[:id])
  end

  def edit
   @book = Book.find(params[:id])
  end


  def update
  @book = Book.find(params[:id])
  if @book.update(book_params)
    redirect_to book_path(@book.id)
  else
    render :edit
  end
  flash[:update] = "Book was successfully update!"
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
