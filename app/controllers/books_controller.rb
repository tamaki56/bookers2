class BooksController < ApplicationController
  def index
    @book = Book.new
    @books = Book.all
    @user = current_user
  end

  def show
    @book = Book.find(params[:id])
    @new_book = Book.new
    @user = @book.user
  end
  
  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @books= Book.all
    @book.save
    redirect_to book_path(@book.id)
  end
  
  def edit
    @book = Book.find(params[:id])
  end
  
  private
    
    def book_params
      params.require(:book).permit(:title, :body)
    end
end
