class UsersController < ApplicationController
  def index
    @user = current_user
    @users = User.all
    @book = Book.new
  end


  def show
    @user = current_user
    @book = Book.new
    @books = @user.books
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    if user.update(user_params)
      redirect_to user_path(user.id)
      flash[:notice] = 'You have updated user successfully.'
    else
      flash.now[:alert] = 'dame'
      render :edit
    end
  end

  private

  def book_params
    params.require(:book).permit(:title,:body,:image)
  end

  def user_params
    params.require(:user).permit(:title,:introduction,:image)
  end

end
