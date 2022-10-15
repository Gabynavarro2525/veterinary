require "rails_helper"

RSpec.describe Product, type: :model do
  it "Testing mailer" do
    expect(mail.subject).to eq("Signup")
    expect(mail.to).to eq(["gabynavarro2525@gmail.com"])
    expect(mail.from).to eq(["djohnston@ucol.mx"])
  end
  it "body of the mail" do
    expect(mail.body.encoded).to match("Download report in pdf format")
  end
end
