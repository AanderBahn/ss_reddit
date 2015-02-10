# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
100.times do |n|
  name = Faker::Internet.email
  User.create!( email: "#{n}#{name}",
                password: "12345678",
                password_confirmation: "12345678"
              )
end

puts "#{User.all.count} users have been created"
users = User.all

Post.destroy_all
100.times do
  Post.create!( title: Faker::Lorem.sentence(3),
                user_id: users.pluck(:id).sample
                )
end

puts "#{Post.all.count} posts have been created"
posts = Post.all

Vote.destroy_all
500.times do
  Vote.create!( user_id: users.pluck(:id).sample,
                votable_id: posts.pluck(:id).sample,
                votable_type: "Post"
                  )
end
puts "#{Vote.all.count} votes have been created"







