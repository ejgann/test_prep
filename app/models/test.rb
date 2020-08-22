class Test < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :date, presence: true 

  # scope :countdown, where("date > ?", (@test.date) - (Date.today).to_i)

  scope :name_search, -> { where('name > ?', "%#{search}%") }
  

  # def self.search(search)
  #   if search.present?
  #     @tests = Test.where('name LIKE ?', "%#{search}%")
  #   else
  #     @tests = Test.all
  #   end
  # end

  # def self.search(search)
  #   if search
  #     test_name = Test.find_by(name: search)
  #     if test_name
  #       self.where('name LIKE ?', "%#{search}%")
  #     else
  #       @tests = Test.all
  #     end
  #   else
  #     @tests = Test.all
  #   end
  # end

end