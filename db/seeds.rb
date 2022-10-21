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

post1 = Post.create(title: "Breaking News", body: "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
            user: user1)




# Post.create(title: "Today's Weather", body: "Coast-To-Coast Temperature Flip Expected From Pattern Change", user: 1)
# Comment.create(body: "Nice!", post:post1 ,user: user)
post1.save!

comments1 = Comment.create(body: "It is funny!", post:post1 ,user: user2)
comments1.save!
comments2 = Comment.create(body: "Wowww!", post:post1 ,user: user1)
comments2.save!

user5 = User.find(5)

post2 = Post.create(title: "Cloud Computing", body: "Cloud computing is the on-demand availability of computer system resources, especially data storage and computing power, without direct active management by the user",
                    user: user5)

post2.save!

user11 = User.find(11)

comments1 = Comment.create(body: "Interesting! Cloud computing is my research area.", post:post2 ,user: user11)
comments1.save!

