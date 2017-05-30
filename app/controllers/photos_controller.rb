class PhotosController < ApplicationController
  before_action :authenticate!

  def index
    @photos = current_user.photos
  end

  def new
    @request = Request.find(params[:request_id])
    @photo = @request.photos.new

    if @request.photographer != current_user
      redirect_to home_home_url, notice: "You aren't the photographer for this event"
    end
  end

  def create
    @request = Request.find(params[:request_id])

    if @request.photographer != current_user
      redirect_to home_home_url, notice: "You aren't the photographer for this event"
    end

    @request.photos.create(photo_params)
    redirect_to request_path(@request)
  end

  private


  def photo_params
    params.require(:photo).permit(:image)
  end
end
