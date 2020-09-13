class Goal < ApplicationRecord
    belongs_to :user
    has_many :users, through :locations
    has_many :locations

    validates :title, :locations, :themes, :groups, prescence: true
end
