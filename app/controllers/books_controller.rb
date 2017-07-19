class BooksController < ApplicationController

  def index

  end

  def new

  end

  def create
    @book = Book.new(book_params)
    @book.save

    redirect_to @book
  end

  def show
    @book = Book.find(params[:id])
  end

  private
    def book_params
      params.require(:book).permit(:title, :author, :category, :description)
    end
end