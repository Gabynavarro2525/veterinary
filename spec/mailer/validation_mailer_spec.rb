require "rails_helper"

RSpec.describe UserMailer, :type => :mailer do
  describe "send mail" do
    let(:mail) { UserMailer.send_mail_files.deliver_now! }
    #let(:host) { products_url(format: :pdf) }
    it "subject" do
      expect(mail.subject).to eq("Welcome to Veterinary page")
    end
    it "receiver email" do
      expect(mail.to).to eq(["gabynavarro2525@gmail.com"])
    end
    it "sender email" do
      expect(mail.from).to eq(["djohnston@ucol.mx"])
    end
  end
end
