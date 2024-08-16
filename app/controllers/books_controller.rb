class BooksController < ApplicationController
  def index
    @books = Book.all
  end
  def show
    # @params = { id: params[:id], name: params[:name] }
    @book =Book.find(params[:id])
  end

  def new
    @book = Book.new
  end
  def create
    @book = Book.new(books_params)
    if @book.save
      redirect_to @book
    else
      render :new
    end
    # @books_params = params["book"]
  end

  private

  def books_params
    params.require(:book).permit(:name, :description, :author, :price, :available)
  end
end
