class AuthorBooksController < ApplicationController
  def destroy
    @ab = AuthorBook.find(params[:id])
    @id = @ab.book.id
    @ab.destroy
    redirect_to book_path(@id)
  end
end
