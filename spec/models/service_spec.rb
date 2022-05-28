require 'rails_helper'

RSpec.describe Service, type: :model do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:price)}
end