# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Recipe.destroy_all
User.destroy_all
Recipe.create(name:"recipe1", user_name:"user1")
Recipe.create(name:"recipe2", user_name:"user2")
Recipe.create(name:"recipe3", user_name:"user3")
Recipe.create(name:"recipe3", user_name:"")
puts Recipe.all.size
puts User.all.size
