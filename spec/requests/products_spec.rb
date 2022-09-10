#preguntar si esta bien
require 'rails_helper'
RSpec.describe "Products", type: :request do
  describe "GET /products" do
     let!(:products) { FactoryBot.create_list(:product, 4) }
     it "contains the product names" do
        get "/products"
        #preguntar por esto
        expect(response).to include products.name
        expect(response).to include products.classification
        expect(response).to include products.purchase_price
        expect(response).to include products.selling_price
     end
  end
end

# Gemfile
#gem 'capybara'
# spec/features/products_spec.rb
#require 'rails_helper'
#RSpec.feature "Products" do
#  let!(:products) { FactoryBot.create_list(:product, 4) }

#  scenario "when a user views a product" do
#    visit '/'
#    click_link 'Products'
#    click_link products.first.name
#    expect(page).to have_content products.first.name
#    expect(page).to have_content products.first.description
#  end
#end