class Activity < ApplicationRecord
  belongs_to :user
  has_many :trainings
  has_many :tests, through: :trainings
  validates :name, presence: true
  validates :time_required, numericality: {only_integer: true}
end
