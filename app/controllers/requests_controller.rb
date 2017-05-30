class RequestsController < ApplicationController
  before_action :authenticate!

  def index
    @requests = Request.all
  end

  def show
    @request = Request.find(params[:id])
    @photo = @request.photos.new
  end

  def new
    @request = Request.new
  end

  def create
    @request = current_user.requests.create!(request_params)
    if @request.valid?
      flash[:success] = "Your request has been sent and your photographer is on their way!"
      @photographer = User.find(@request.photographer_id)
      @request_url = "https://amcphotopops.herokuapp.com/requests/1"
      PhotographerMailer.new_request(@photographer, @request_url).deliver
      redirect_to home_home_url
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def request_params
    params.require(:request).permit(:name, :contact, :occassion, :pro_camera, :needed_for_entire_event, :special_instructions, :photographer_id)

  end
end
