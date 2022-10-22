# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
# #   Character.create(name: "Luke", movie: movies.first)
#
user1 = User.create(name: "Rob Blue", email: "rob.pj@example.com", user_name: "Rob_Blue")
user1.save!
user2 = User.create(name: "William Xu", email: "willi.pj@example.com", user_name: "WilliamXu")
user2.save!

user3 = User.create(name: "Sam Smith", email: "samss10@example.com", user_name: "Rsmith_12")
user3.save!
user4 = User.create(name: "Newton Gay", email: "NG@example.com", user_name: "New_G")
user4.save!


user5 = User.create(name: "Ryan Brown", email: "R_Brown@example.com", user_name: "R_Brown")
user5.save!
user6 = User.create(name: "Alex Paul", email: "alex@example.com", user_name: "alexiii")
user6.save!

post1 = Post.create(title: "Breaking News", body: "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
            user: user1)

post2 = Post.create(title: "Cloud Computing", body: "Cloud computing is the on-demand availability of computer system resources, especially data storage and computing power, without direct active management by the user",
                    user: user5)

post2.save!

post3 = Post.create(title: "UK Prime Minister Liz Truss resigns after failed budget and market turmoil", body: "U.K. Prime Minister Liz Truss resigned Thursday following a failed tax-cutting budget that rocked financial markets and which led to a revolt within her own Conservative Party.",
                    user: user4)

post3.save
post4 = Post.create(title: "WWE SmackDown!", body: "With Michael Cole and Pat McAfee.
Photo via
@WWE", user: user2)

post4.save

post5 = Post.create(title: "Hello world!", body: "I am testing this brand new social media platform.", user: user1)
post5.save


# Post.create(title: "Today's Weather", body: "Coast-To-Coast Temperature Flip Expected From Pattern Change", user: 1)
# Comment.create(body: "Nice!", post:post1 ,user: user)
# post1.save!

comments1 = Comment.create(body: "It is funny!", post:post4 ,user: user3)
comments1.save!
comments2 = Comment.create(body: "Wowww!", post:post3 ,user: user3)
comments2.save!

comments3 = Comment.create(body: "That's interesting! I didn't know that", post:post1 ,user: user6)
comments3.save!
comments4 = Comment.create(body: "LOL :) !", post:post2 ,user: user6)
comments4.save!

comments5 = Comment.create(body: "Sounds good!", post:post4 ,user: user2)
comments5.save!
comments6 = Comment.create(body: "Cloud computing is very popular nowadays and it's my research area too.", post:post2 ,user: user1)
comments6.save!

comments7 = Comment.create(body: "Nice!", post:post5 ,user: user5)
comments7.save!


# user11 = User.find(11)
#
# comments1 = Comment.create(body: "Interesting! Cloud computing is my research area.", post:post2 ,user: user11)
# comments1.save!
