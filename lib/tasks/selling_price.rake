namespace :modify_column do
  desc "modify the column of selling price"
  task products: :environment do
    prin = 1
    value = Product.select :selling_price
    Puts value * 1.1
    products.update_column :selling_price
  end
end

#FROM product;
#iterador
#transactions
#rollback
#buen preformance
#otra rake task crear productos de forma random, el usuario agrega numero de productos a crear
#traerlas funcionando
#loggers
