class Activity < ApplicationRecord
  belongs_to :user
  has_many :trainings
  has_many :tests, through: :trainings
end
