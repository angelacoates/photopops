class RequestorMailer < ApplicationMailer
  default from: "angela@angelamarii.com"

  def new_request(request)
    @request = request
    @photographer = @request.photographer

    mail(to: @request.requestor.email, subject: "Hey heres your photographer ")
  end
end
