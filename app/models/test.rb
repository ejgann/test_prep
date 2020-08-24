class Test < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :date, presence: true 

  # scope :countdown, where("date > ?", (@test.date) - (Date.today).to_i)

  # scope :search, -> (search) { where('name ILIKE > ?', "%#{search}%") }

    def self.search(params)
      where("LOWER(name) LIKE ?", "%#{params}%")
    end
    # select any tests with a name that is an exact match to the search term


end