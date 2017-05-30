class UsersController < ApplicationController
  before_action :authenticate!

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user != current_user
      return render text: 'Not Allowed', status: :forbidden
    end
    @user.update_attributes(user_params)
    if @user.valid?
      redirect_to home_home_url
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy

  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :pro_camera, :opt_in)
  end
end
