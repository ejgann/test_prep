class Activity < ApplicationRecord
  belongs_to :user
  has_many :trainings
  has_many :tests, through: :trainings
  validates :name, presence: true
  validates :time_required, numericality: {only_integer: true}

  # scope method
  scope :most_popular, -> { Activity.left_outer_joins(:trainings).group(:id).order("count(trainings.workout_id) desc") }
  # want to order the 'all workouts' view by popularity (i.e. number of trainings associated with that workout)
  # to count the number of trainings of an associated workout => @workout.trainings.count
  # .order -- desc  (i.e. "descending")
  # because it involves a join table, we have to incorporate joins + model into the scope method
end
