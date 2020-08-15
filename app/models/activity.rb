class Activity < ApplicationRecord
  has_many :study_sessions
  has_many :users, through: :study_sessions
  
  validates :name, presence: true
  validates :time_required, numericality: {only_integer: true}


  # scope method
  scope :most_popular, -> { Activity.left_outer_joins(:trainings).group(:id).order("count(trainings.activity_id) desc") }
  # want to order the 'all activities' view by popularity (i.e. number of training occurrences associated with that activity)
  # to count the number of trainings of an associated activity => @activity.trainings.count
  # .order -- desc  (i.e. "descending")
  # because it involves a join table, we have to incorporate joins + model into the scope method
end
