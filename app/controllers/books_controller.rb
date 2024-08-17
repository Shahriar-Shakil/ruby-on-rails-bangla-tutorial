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
      redirect_to @book, notice: "New Book has been created"
    else
      render :new, status: :unprocessable_entity
    end
    # @books_params = params["book"]
  end
  def edit
    @book = Book.find(params[:id])
  end
  def update
    @book = Book.find(params[:id])
    if @book.update(books_params)
      redirect_to @book, notice: "Update successfully"
    else
      render :edit, status: :unprocessable_entity
    end
  end
  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to books_path, alert: "Book successfully Deleted"
  end
  private

  def books_params
    params.require(:book).permit(:name, :description, :author, :price, :available)
  end
end
