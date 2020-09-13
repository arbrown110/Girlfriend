class User < ApplicationRecord
    has_secure_password

    validates :username, :email, prescence: true
    validates :username, :email, uniqueness: true   
end
