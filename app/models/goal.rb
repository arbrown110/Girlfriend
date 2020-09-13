class Goal < ApplicationRecord
    belongs_to :user
    belongs_to :locations
    has_many :users, through: :locations
    has_many :locations

    validates :title, :locations, :themes, :groups, presence: true

    #scope :search_by_theme, -> (search_theme)(where("theme = ?", search_theme))


end
