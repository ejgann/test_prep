# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# users
User.create(username: "Emily", email: "e@email.com", password: "asdf")
User.create(username: "Irena", email: "i@email.com", password: "asdf")
User.create(username: "Carrie", email: "c@email.com", password: "asdf")

# tests
Test.create(name: "GRE", date: Date.parse('17/9/2020'), user_id: 2)
Test.create(name: "LSAT", date: 2020/9/17, user_id: 1)
Test.create(name: "GMAT", date: 2020/11/20, user_id: 2)
Test.create(name: "ACT", date: 2020/10/24, user_id: 3)
Test.create(name: "MCAT", date: 2020/11/10, user_id: 3)


# activities
Activity.create(name: "Flash Cards", time_required: 1)
Activity.create(name: "Study Group", time_required: 2)
Activity.create(name: "Prep Course", time_required: 3)
Activity.create(name: "Tutoring", time_required: 2)
Activity.create(name: "Prep Book", time_required: 3)

# practices

Practice.create(date: 2020/8/10, rating: 2, comment: "not so good", user_id: 1, activity_id: 5)
Practice.create(date: 2020/8/11, rating: 3, comment: "good practice session", user_id: 2, activity_id: 4)
Practice.create(date: 2020/8/13, rating: 3, comment: "I was sleepy, so it was slightly challenging to finish", user_id: 3, activity_id: 3)
Practice.create(date: 2020/8/14, rating: 5, comment: "excellent!", user_id: 1, activity_id: 2)
Practice.create(date: 2020/8/9, rating: 4, comment: "Room for improvement but good overall", user_id: 2, activity_id: 1)
Practice.create(date: 2020/8/11, rating: 4, comment: "Better than last time", user_id: 3, activity_id: 5)
Practice.create(date: 2020/8/10, rating: 4, comment: "Improvement from last time", user_id: 1, activity_id: 4)
