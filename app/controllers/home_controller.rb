class HomeController < ApplicationController
  def index
    # redirect_to :about
    @books=[ "Dont eat alone", "Harry Potter" ]
  end
  def about
    # redirect_to action: :index
    # redirect_to "https://www.google.com/", allow_other_host: true
    # instance variable
    @name = params[:name]
    @id = params[:id]
  end
end
