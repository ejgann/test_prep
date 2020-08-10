class Training < ApplicationRecord
  belongs_to :test
  belongs_to :activity
  validates_associated :activity
  accepts_nested_attributes_for :test, :activity
end
