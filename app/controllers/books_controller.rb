class BooksController < ApplicationController
  before_action :find_book

  def index

  end

  def new

  end

  private
    def find_book
      @book = Book.find(params[:id])
    end
end
