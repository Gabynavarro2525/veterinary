namespace :db do
  desc "modify the column of selling price"
  task update_price: :environment do
    value = Product.select :selling_price
    Puts value * 1.1
    products.update_column :selling_price
  end
end

#find_each
