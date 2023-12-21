namespace :modify_column do
  desc "modify the column of selling price"
  task products: :environment do
    Product.update_all("selling_price = selling_price * 1.1")
  end
end
