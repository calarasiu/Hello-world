# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "delete the users"
User.destroy_all
puts "create user"
user = User.create!(email: "user@user.com",password:"123456", first_name: "user", last_name:"last_name")
puts "user created"

puts "delete the group"
Group.destroy_all
puts "create group"
group = Group.create!(name: "Rails masters", description: "group about Ruby on Rails")
puts "group created"

puts "delete the membership"
Membership.destroy_all
puts "create membership"
membership = Membership.create!(user: user, group: group)
puts "membership created"

puts "delete the posts"
Post.destroy_all
puts "create post"
post = Post.create!(content: "This is the first post", user: user, group: group)
puts "post created"

puts "delete the comment"
Comment.destroy_all
puts "create comment"
comment = Comment.create!(content: "This is the first comment", post: post, user: user)
puts "comment created"

puts "delete the bookmark"
Bookmark.destroy_all
puts "create bookmark"
bookmark = Bookmark.create!(post: post, user: user)
puts "bookmark created"




