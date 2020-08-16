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

