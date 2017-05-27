class RequestController < ApplicationController
  before_action :authenticate!

  def index
    @requests = Resquest.all
  end

  def show
    @request = Request.find(params[:id])
  end

  def new
    @request = Request.new
  end

  def create
    @request = Resquest.new
    @request = current_user.requests.create(request_params)
    if @request.valid?
      redirect_to @request
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
    params.require(:request).permit(:name, :contact, :occassion, :pro_camera, :needed_for_entire_event, :special_instructions)

  end
end
