class Test < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :date, presence: true 

  # scope :countdown, where("date > ?", (@test.date) - (Date.today).to_i)


end