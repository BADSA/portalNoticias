class HomeController < ApplicationController
  def index
    @news = New.all
  end
end
