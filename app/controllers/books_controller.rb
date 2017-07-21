class BooksController < ApplicationController

  def index
    @book = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.save

    redirect_to @book
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(params[:book].permit(:title, :author, :category, :description, :image))
      flash[:success] = "Book Updated"
      redirect_to @book
    else
      render 'edit'
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy

    redirect_to root_path
  end

  private
    def book_params
      params.require(:book).permit(:title, :author, :category, :description, :image)
    end
end
