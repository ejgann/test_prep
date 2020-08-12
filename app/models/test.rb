class Test < ApplicationRecord
  belongs_to :user
  has_many :trainings
  has_many :activities, through: :trainings
  validates :name, presence: true
end
