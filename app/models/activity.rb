class Activity < ApplicationRecord
  has_many :practices
  has_many :users, through: :practices
  
  validates :name, presence: true
  validates :time_required, numericality: {only_integer: true}


end
