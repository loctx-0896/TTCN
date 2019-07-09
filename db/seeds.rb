3.times do |n|
  name  = Faker::Name.name
  Product.create!(name: name, category_id: 1)
end
