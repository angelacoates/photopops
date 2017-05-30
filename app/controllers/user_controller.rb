class UserController < ApplicationController

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def user_params
    #could just use two params you are updating vs all params
    params.require(:user).permit(:name, :email, :pro_camera, :opt_in, :logitude, :latitude, :photographer_id)
  end
end
