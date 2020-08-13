class Test < ApplicationRecord
  belongs_to :user
  has_many :trainings, dependent: :destroy
  has_many :activities, through: :trainings
  validates :name, presence: true
  validates :date, presence: true

  def datetime
    # self.date.strftime("%b %e, %Y") if self.date
    self.date.try(:strftime, "%b %e, %Y")
  end

end
