# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# puts "delete the users"
# User.destroy_all
# puts "create user"
# user = User.create!(email: "user@user.com",password:"123456", first_name: "user", last_name:"last_name")
# puts "user created"

# groups = {
#       :front_end => {
#           name: => " Front-end technology",
#           description: =>"Share knowledge and resources about essential front-end technologies like HTML5, CSS3, JavaScript"},
#       :ruby =>{
#           name:"Ruby masters",
#           description: "Get help on your Ruby journey or share your experience"},
#       :database => {
#           name: "Database wizards",
#           description:"Discover or share the mysteries behind databases"},
#        :design => {
#           name: "The artists of websites",
#           description: "Find inspiration and inspire other users with your design ideas" }
#         }

# puts "delete the group"
# Group.destroy_all
puts "create group"
Group.create!(name: " Front-end technology", description: "Share knowledge and resources about essential front-end technologies like HTML5, CSS3, JavaScript")
Group.create!(name:"Ruby masters", description: "Get help on your Ruby journey or share your experience")
Group.create!(name: "Database wizards", description: "Discover or share the mysteries behind databases")
Group.create!(name:"The artists of websites", description: "Find inspiration and inspire other users with your design ideas")
puts "group created"

# puts "delete the posts"
# Post.destroy_all
# puts "create post"
# post = Post.create!(content: "This is the first post", user_id: 3, group_id: 3)
# puts "post created"

# puts "delete the comment"
# Comment.destroy_all
# puts "create comment"
# comment = Comment.create!(content: "This is the first comment", post: post, user_id: 3)
# puts "comment created"

# puts "delete the bookmark"
# Bookmark.destroy_all
# puts "create bookmark"
# bookmark = Bookmark.create!(post: post, user_id: 3)
# puts "bookmark created"




