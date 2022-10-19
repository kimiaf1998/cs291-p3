# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(name: "Rob Blue", email: "rob.pj@example.com", user_name: "Rob_Blue").save!
User.create(name: "William Xu", email: "willi.pj@example.com", user_name: "WilliamXu").save!

