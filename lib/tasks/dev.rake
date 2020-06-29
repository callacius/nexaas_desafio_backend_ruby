namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do
    #######################################
    puts "Registering the Products..."

    1000.times do |i|
      Product.create!(
        name: Faker::Device.model_name,
        price_cost: Faker::Number.decimal(l_digits: 2)
      )
    end

    puts "Products successfully registered"
    #######################################

    #######################################
    puts "Registering the stores..."

    100.times do |i|
      Store.create!(
        name: Faker::Book.publisher,
        address: Faker::Address.street_address
      )
    end

    puts "Stores successfully registered"
    #######################################

    #######################################
    puts "Registering the stock..."

    Store.all.each do |store|
      Random.rand(100).times do |i|
        StockItem.create!(
          store: store,
          quantity: Random.rand(10),
          product: Product.all.sample
        )
      end
    end

    puts "Stock successfully registered!"
    #######################################
  end
end
