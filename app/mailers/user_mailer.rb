class UserMailer < ApplicationMailer
  def send_mail_files
    attachments["products.pdf"] = open("/home/gabriela/veterinary/app/views/products/products.pdf.erb").read
    mail(to: "gabynavarro2525@gmail.com", from: "djohnston@ucol.mx", subject: "Welcome to Veterinary page", message: "Body of the message")
  end
end
