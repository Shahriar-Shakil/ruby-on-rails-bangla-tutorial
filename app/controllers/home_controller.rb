class HomeController < ApplicationController
  def index
    # redirect_to :about
    flash.now[:notice] = "This is a notice Message!"
  end
  def about
    flash.now[:alert] = "This is a alert Message!"

    # redirect_to action: :index
    # redirect_to "https://www.google.com/", allow_other_host: true
    # instance variable
    @name = params[:name]
    @id = params[:id]
  end
end
