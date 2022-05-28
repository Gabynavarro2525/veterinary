require 'rails_helper'

RSpec.describe Product, type: :model do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:classification) }
    it { should validate_presence_of(:selling_price) }
    it { should validate_numericality_of(:selling_price)}
    it { should validate_presence_of(:purchase_price) }
    it { should validate_numericality_of(:purchase_price)}

end