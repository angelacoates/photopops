# Preview all emails at http://localhost:3000/rails/mailers/photographer_mailer
class PhotographerMailerPreview < ActionMailer::Preview

  def request
    @request = User.first.requests.create!({name: "Tom Smith", photographer_id: User.last.id, occassion: "Birthday", contact: "Me"})

    PhotographerMailer.new_request(@request)
  end

end
