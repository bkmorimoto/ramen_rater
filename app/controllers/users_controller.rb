class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)

    if @user.valid?
      session_in!(@user)
      redirect_to root_path
    else
      set_flash "Username taken, or passwords do not match!"
      redirect_to new_user_path
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end

end
