# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
100.times do
  photo = Photo.create(
    username: Faker::Internet.user_name,
    caption: Faker::Lorem.sentence,
    likes_count: Faker::Number.number(4),
    url: Faker::Avatar.image,
    created_at: Faker::Date.between_except(
      1.year.ago, 1.year.from_now, Date.today
    )
  )
  5.times do
    photo.comments.create(
      username: Faker::Internet.user_name,
      body: Faker::Movie.quote
    )
  end
end
