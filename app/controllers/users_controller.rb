class UsersController < ApplicationController
  before_action :logged_in_user, only: %i(show edit update)
  before_action :load_user, only: %i(show edit update)
  before_action :correct_user, only: %i(edit update)

  def show; end

  def edit; end

  def update
    if @user.update_attributes user_params
      flash[:success] = t "controllers.users.update_success"
      redirect_to user_path
    else
      flash[:danger] = t "controllers.users.update_fail"
      render :edit
    end
  end

  private

  def load_user
    @user = User.find_by id: params[:id]
    return if @user
    flash[:danger] = t "controllers.users.login_please"
    redirect_to root_path
  end

  def user_params
    params.require(:user).permit(:name, :picture, :phone, :password)
  end

  def correct_user
    return edit if @user == current_user || current_user.admin?
    flash[:danger] = t "controllers.users.can_not"
    redirect_to edit_user_path(current_user.id)
  end
end
