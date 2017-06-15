# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

1.times do |i|
  photo = Photo.new  username: Faker::Internet.user_name, caption: Faker::Internet.user_name, likes_count: rand(100), url: Faker::Avatar.image, created_at: Faker::Date.between_except(1.year.ago, 1.year.from_now, Date.today)

  photo.save!
end
