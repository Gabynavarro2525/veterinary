class UserMailer < ApplicationMailer
  def send_mail_files
    mail(to: "gabynavarro2525@gmail.com", from: "djohnston@ucol.mx", subject: "Welcome to Veterinary page", message: "Body of the message")
  end
end
