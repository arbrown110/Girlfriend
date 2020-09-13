class Location < ApplicationRecord
    belongs_to :user
    belongs_to :goal
    has_many :users, through :goals
    validates :city, :state, :date, presence: true
end
