class User < ApplicationRecord
    
    has_many :goals
    has_many :locations, through: :goals
    has_secure_password

    validates :username, :email, presence: true
    validates :username, :email, uniqueness: true
end
