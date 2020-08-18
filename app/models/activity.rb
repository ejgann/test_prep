class Activity < ApplicationRecord
  has_many :practices
  has_many :users, through: :practices
  
  validates_associated :practices
  validates :name, presence: true, uniqueness: true
  validates :time_required, numericality: true

  scope :order_by_popularity, -> { Activity.left_joins(:practices).group(:id).order("count(practices.activity_id) desc") }
  #order by how many associated practice sessions

end
