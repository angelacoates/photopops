class PhotographerMailer < ApplicationMailer
  default from: "angela@angelamarii.com"

  def new_request(photographer, request_url)
    @request_url = request_url
    @photographer = photographer
    mail(to: @photographer.email, subject: "Request to take photos")
  end
end
