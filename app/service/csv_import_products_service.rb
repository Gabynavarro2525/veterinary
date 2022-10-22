class CsvImportProductsService
  require "csv"

  def call(file)
    csv = CSV.parse(file, headers: true)
    csv.each do |row|
      product_hash = {}
      product_hash[:area_id] = row["area_id"]
      product_hash[:id] = row["id"]
      product_hash[:name] = row["name"]
      product_hash[:classification] = row["classification"]
      product_hash[:selling_price] = row["selling_price"]
      product_hash[:purchase_price] = row["purchase_price"]
      Product.create!(product_hash)
    end
  end
end
