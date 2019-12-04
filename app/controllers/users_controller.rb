class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to new_user_path(@user)
    end
  end

  def show
    find_user
  end

  def edit
    find_user
  end

  def update
    find_user
    # @user = User.new(user_params)
    if @user.update
      redirect_to @user
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to edit_user_path(@user)
    end
  end


  def destroy
    find_user
    @user.destroy
  end


  private

  def find_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :bio)
  end

end
