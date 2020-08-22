class Practice < ApplicationRecord
  belongs_to :user
  belongs_to :activity

  validates :date, presence: true
  validates :comment, presence: true
  validates :rating, numericality: {only_integer: true}

  # accepts_nested_attributes_for :activity

  def activity_attributes=(activity_params)
    activity = Activity.find_or_create_by(activity_params)
    activity.valid? ? self.activity = activity : self.activity
  end

end
