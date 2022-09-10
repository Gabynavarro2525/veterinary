require 'rails_helper'

RSpec.describe "Products", type: :request do
  describe "GET /products" do
     let!(:products) { FactoryBot.create_list(:product, 4) }

     it "contains the product names" do
        get "/products"
        expect(response.status).to eq 200
        #for product in products do
         # expect(response.body).to include(product.name)
        #end
        products.each do |product|
          expect(response.body).to include(product.name)
        end
     end
      it "contains the product names" do
       get "/products", params:{format: :pdf}
       expect(response.status).to eq 200
       expect(response.content_type).to eq('application/pdf')
      end
   end
end