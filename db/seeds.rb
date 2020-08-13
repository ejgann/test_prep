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
gre = Test.new(name: "GRE", user_id: 2)
lsat = Test.new(name: "LSAT", user_id: 1)
gmat = Test.new(name: "GMAT", user_id: 2)
act = Test.new(name: "ACT", user_id: 3)
mcat = Test.new(name: "MCAT", user_id: 3)


# activities
flash_cards = Activity.new(name: "Flash Cards", time_required: 1, user_id: 1)
flash_cards = Activity.new(name: "Flash Cards", time_required: 1, user_id: 2)
flash_cards = Activity.new(name: "Flash Cards", time_required: 1, user_id: 3)
study_guide = Activity.new(name: "Study Guide", time_required: 3, user_id: 3)
tutor = Activity.new(name: "Tutor", time_required: 1, user_id: 3)
tutor = Activity.new(name: "Tutor", time_required: 2, user_id: 1)
prep_course = Activity.new(name: "Prep Course", time_required: 3, user_id: 2)
prep_course = Activity.new(name: "Prep Course", time_required: 3, user_id: 1)
prep_course = Activity.new(name: "Prep Course", time_required: 3, user_id: 3)

# trainings

t1 = Training.new(date: 07/12/20, notes: "Great", activity_id: 1, test_id: 1)
t2 = Training.new(date: 07/13/20, notes: "Tough but good challenge", activity_id: 2, test_id: 2)
t3 = Training.new(date: 07/13/20, notes: "Not so great today", activity_id: 3, test_id: 3)
t4 = Training.new(date: 07/15/20, notes: "Substantial improvement", activity_id: 4, test_id: 4)
t5 = Training.new(date: 07/17/20, notes: "Better time than last", activity_id: 4, test_id: 5)
t6 = Training.new(date: 07/18/20, notes: "Need to practice more", activity_id: 5, test_id: 1)
t7 = Training.new(date: 07/22/20, notes: "So so", activity_id: 6, test_id: 2)
t8 = Training.new(date: 07/22/20, notes: "Not too shabby", activity_id: 7, test_id: 3)
t9 = Training.new(date: 07/22/20, notes: "Need lots of work", activity_id: 8, test_id: 4)
t10 = Training.new(date: 07/25/20, notes: "Acceptable", activity_id: 9, test_id: 5)