namespace :create_products do
  desc "create new products"
  task products: :environment do
    puts "Number of users to enter"
    newuser = STDIN.gets.to_i
    newuser.times do
      Product.create(area_id: "1", name: Faker::Lorem.word, clasification: Faker::Lorem.word, selling_price: Faker::Number.decimal_part(digits: 1), purchase_price: Faker::Number.decimal_part(digits: 1))
    end
  end
end
