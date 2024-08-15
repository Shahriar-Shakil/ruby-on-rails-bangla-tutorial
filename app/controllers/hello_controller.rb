class HelloController < ApplicationController
def index
  redirect_to controller: :home, action: :about
end
end
