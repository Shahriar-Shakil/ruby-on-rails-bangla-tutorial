class BooksController < ApplicationController
  def index
    @books = Book.all
  end
  def show
    # @params = { id: params[:id], name: params[:name] }
    @book =Book.find(params[:id])
  end
end
