class Training < ApplicationRecord
  belongs_to :test
  belongs_to :activity
  validates_associated :activity
  accepts_nested_attributes_for :test, :activity
  validates :date, :notes, presence: true
  validates :rating, numericality: { greater_than: 0, less_than: 6 }

  scope :by_activity, -> (activity_id) {where("activity_id = ?", activity_id)}

  def activity_attributes
    activity = Activity.find_or_create_by(activity_params)
    # activity.valid? ? self.activity = activity : self.activity
    activity_params[:name].empty? ? self.activity : self.activity = activity
  end

  def datetime
    self.date.strftime("%b %e, %Y") if self.date
    #self.date.try(:strftime, "%b %e, %Y")
  end


end
