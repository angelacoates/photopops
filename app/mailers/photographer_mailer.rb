class PhotographerMailer < ApplicationMailer
  default from: "angela@angelamarii.com"

  def new_request(request)
    @request = request
    @photographer = request.photographer
    mail(to: @photographer.email, subject: "Request to take photos")
  end
end
