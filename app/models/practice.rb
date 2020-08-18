class Practice < ApplicationRecord
  belongs_to :user
  belongs_to :activity

  validates :date, presence: true
  validates :comment, presence: true
  validates :rating, numericality: {only_integer: true}

end
