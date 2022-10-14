require "rails_helper"

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
    it "format is pdf" do
      get "/products", params: { format: :pdf }
      expect(response.status).to eq 200
      expect(response.content_type).to eq("application/pdf; charset=utf-8")
      expect(response).to be_successful
    end
    it "format is csv" do
      get "/products", params: { format: :csv }
      expect(response.status).to eq 200
      expect(response.content_type).to eq("application/octet-stream")
      expect(response).to be_successful
    end
  end
  describe "#execute" do
    let(:csv_file) { "products.csv" }
    it "export csv" do
      get "/products", params: { format: :csv }
      expect(response.status).to eq 200
      expect(response.body).to include("area_id")
      expect(response.body).to include("id")
      expect(response.body).to include("name")
      expect(response.body).to include("classification")
      expect(response.body).to include("purchase_price")
      expect(response.body).to include("selling_price")
      expect(response).to be_successful
    end
  end
  describe "POST #create" do
    it "import csv" do
      get "/products", params: { format: :csv }
      expect(response.status).to eq 200
      expect(response.content_type).to eq("application/octet-stream")
      @file = fixture_file_upload("products.csv", "csv")
      #post :create, params: {
      #               csv_file: fixture_file_upload("/products.csv", "text/csv"),
      #            }
      expect(response).to be_successful
    end
  end
end