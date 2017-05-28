class PhotosController < ApplicationController
  before_action :authenticate!

  def index
    @photos = current_user.photos
  end

  def new
    @request = Request.find(params[:request_id])
    @photo = @request.photos.new
  end

  def create
    @request = Request.find(params[:request_id])
    @request.photos.create(photo_params)
    redirect_to request_path(@request)
  end

  private

  def photo_params
    params.require(:photo).permit(:image_data)
  end
end
