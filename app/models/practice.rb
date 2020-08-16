class Practice < ApplicationRecord
  belongs_to :user
  belongs_to :activity

  validates :date, presence: true
  validates :comment, presence: true
end
