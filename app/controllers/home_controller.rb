class HomeController < ApplicationController
  def index
    # redirect_to :about
  end
  def about
    # redirect_to action: :index
    redirect_to "https://www.google.com/", allow_other_host: true
  end
end
