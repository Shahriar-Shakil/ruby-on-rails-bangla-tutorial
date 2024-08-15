class BooksController < ApplicationController
  def index
  end
  def show
    @params = { id: params[:id], name: params[:name] }
  end
end
