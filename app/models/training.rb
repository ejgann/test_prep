class Training < ApplicationRecord
  belongs_to :test
  belongs_to :activity
  validates_associated :activity
  accepts_nested_attributes_for :test, :activity
  validates :date, :notes, presence: true
  validates :rating, numericality: { greater_than: 0, less_than: 6 }

  def datetime
    self.date.strftime("%b %e, %Y") if self.date
    #self.date.try(:strftime, "%b %e, %Y")
  end


end
