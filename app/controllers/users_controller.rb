class UsersController < ApplicationController
  def index
    @user = current_user
    @users = User.all
    @book = Book.new
  end
  
  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(current_user.id)
  end

  def show
    @user = User.find(params[:id])
    @book = Book.new
    @books= @user.books
  end

  def edit
    @user = User.find(params[:id])
    if @user != current_user
      redirect_to user_path(current_user.id)
    end 
  end
  
  private
    
    def user_params
      params.require(:user).permit(:name, :introduction)
    end
  
end
