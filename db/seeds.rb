User.create!(name: "LocDepTrai",
             email: "admin@gmail.com",
             password: "123123",
             password_confirmation: "123123",
             activated: 1)
20.times do |n|
  name  = Faker::Name.name
  email = "loc#{n+1}@gmail.com"
  password = "123123"
  User.create!(name: name,
               email: email,
               password: password,
               password_confirmation: password,
               activated: 1)
end

3.times do |n|
  name  = Faker::Name.name
  Category.create!(name: name)
end
Category.create!(name: "LocDepTrai1",
                parent_id: 1)
Category.create!(name: "LocDepTrai2",
                parent_id: 1)
Category.create!(name: "LocDepTrai3",
                parent_id: 2)
Category.create!(name: "LocDepTrai4",
                parent_id: 2)
Category.create!(name: "LocDepTrai5",
                parent_id: 3)
Category.create!(name: "LocDepTrai6",
                parent_id: 3)

10.times do |n|
  name  = Faker::Name.name
  Product.create!(name: name, category_id: 1)
end

10.times do |n|
  name  = Faker::Name.name
  Product.create!(name: name, category_id: 2)
end

10.times do |n|
  name  = Faker::Name.name
  Product.create!(name: name, category_id: 3)
end
