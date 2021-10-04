class BooksController < ApplicationController
  before_action :ensure_correct_user, only: [:edit, :update]
  
  def show
    @books = Book.new
    @book
  end
  
  def index
  end
  
  def create
  end
  
  def edit
  end
  
  def update
  end
  
  def destroy
  end
  
  private
  
  def book_params
    params.requre(:book).permit(:title, :body)
  end
  
  def ensure_correct_user
    @book = Book.find(params[:id])
    @user = @book.user
    redirect_to(books_path) unless @user == current_user
  end
  
end
