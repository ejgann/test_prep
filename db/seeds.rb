# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# users
emily = User.new(username: "Emily", email: "e@email.com", password: "asdf")
irena = User.new(username: "Irena", email: "i@email.com", password: "asdf")
carrie = User.new(username: "Carrie", email: "c@email.com", password: "asdf")

# tests
gre = Test.new(name: "GRE", date: 2020/11/17, user_id: 2)
lsat = Test.new(name: "LSAT", date: 2020/9/17, user_id: 1)
gmat = Test.new(name: "GMAT", date: 2020/11/20, user_id: 2)
act = Test.new(name: "ACT", date: 2020/10/24, user_id: 3)
mcat = Test.new(name: "MCAT", date: 2020/11/10, user_id: 3)


# activities
flash_cards = Activity.new(name: "Flash Cards", time_required: 1)
study_group = Activity.new(name: "Study Group", time_required: 2)
prep_course = Activity.new(name: "Prep Course", time_required: 3)
tutoring = Activity.new(name: "Tutoring", time_required: 2)
prep_book = Activity.new(name: "Prep Book", time_required: 3)

# practices

p1 = Practice.new(date: 2020/8/10, rating: 2, comment: "not so good", user_id: 1, activity_id: 5)
p1 = Practice.new(date: 2020/8/11, rating: 3, comment: "good practice session", user_id: 1, activity_id: 5)
p1 = Practice.new(date: 2020/8/13, rating: 3, comment: "I was sleepy, so it was slightly challenging to finish", user_id: 1, activity_id: 5)
p1 = Practice.new(date: 2020/8/14, rating: 5, comment: "excellent!", user_id: 1, activity_id: 5)
p1 = Practice.new(date: 2020/8/9, rating: 4, comment: "Room for improvement but good overall", user_id: 1, activity_id: 5)
p1 = Practice.new(date: 2020/8/11, rating: 4, comment: "Better than last time", user_id: 1, activity_id: 5)
p1 = Practice.new(date: 2020/8/10, rating: 4, comment: "Improvement from last time", user_id: 1, activity_id: 5)