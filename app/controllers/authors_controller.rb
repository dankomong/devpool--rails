class AuthorsController < ApplicationController
before_action :get_author_by_id, only: [:show, :edit, :update, :destroy]

  def index
    @authors = Author.all
  end

  def new
    @author = Author.new
  end

  def show
  end

  def create
    @author = Author.create(author_params(:name, :birth_year))
    redirect_to author_path(@author)
  end

  def edit

  end

  def update
    # @author = Author.find(params[:id])
    @author.update(author_params(:name, :birth_year))
    redirect_to author_path(@author)
  end

  def destroy
    # @author = Author.find(params[:id])
    @author.destroy
    redirect_to authors_path
  end

  private

  def get_author_by_id
    @author = Author.find(params[:id])
  end

  def author_params(*args)
    params.require(:author).permit(*args)
  end
end
