class UsersController < ApplicationController
  def index
  	@users = User.All
  	@user = current_user
  	@book = Book.new
  end

  def show
  	@user = User.find(params[:id])
  	@books = @user.books
  	@book = Book.new
  end

  def edit
  	@user = User.find(params[:id])
  end

  def update
  end

end

