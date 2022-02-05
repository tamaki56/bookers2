class UsersController < ApplicationController
  def index
    @user = User.new
    @users = User.all
    @book = Book.new
  end

  def show
    @user = User.find(params[:id])
    @book = Book.new
    @books= Book.all
  end

  def edit
    @user = User.find(params[:id])
  end
end
