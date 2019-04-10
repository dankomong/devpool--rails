class BooksController < ApplicationController
  before_action :get_book_by_id, only: [:show, :edit, :update, :destroy]

    def index
      @books = Book.all
    end

    def show
      @books = Book.all
      @authors = Author.all
    end

    def update
      @book.authors << Author.find(params[:book][:author_ids])
      redirect_to book_path(@book)
    end

    private

    def get_book_by_id
      @book = Book.find(params[:id])
    end

    def book_params(*args)
      params.require(:book).permit(*args)
    end
end
