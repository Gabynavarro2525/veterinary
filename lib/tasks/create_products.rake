require "faker"
namespace :db do
  desc "create new products"
  task create_products: :environment do
    puts "enter the number of productos  to create"
    newuser = STDIN.gets.to_i
    newuser.times do
     product = Product.create!(area_id: 1, name: Faker::Lorem.word, classification: Faker::Lorem.word, selling_price: Faker::Number.decimal_part(digits: 1), purchase_price: Faker::Number.decimal_part(digits: 1))
      puts "Product created #{product.id}"
    end
  end
end
