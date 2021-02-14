class HomesController < ApplicationController
  def top
  end
  def about
  end
  def index
    @book = Book.new
    @books = Book.all
    @user = current_user
  end
end
