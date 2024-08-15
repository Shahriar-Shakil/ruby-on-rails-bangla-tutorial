class HelloController < ApplicationController
  def index
    @name = params[:name]
    @id = params[:id]
  end
end
