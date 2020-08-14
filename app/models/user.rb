class User < ApplicationRecord
    has_secure_password
    has_many :tests
    has_many :created_activities, foreign_key: "user_id", class_name: "Activity"
    has_many :logged_trainings, through: :tests, source: :activities
    validates :username, :email, presence: true
    validates :username, uniqueness: true


    def self.omniauth(auth)
        where(email: auth.info.email).first_or_initialize do |user|
          user.username = auth.info.name
          user.email = auth.info.email
          user.password = SecureRandom.hex
        end
      end
    

end
