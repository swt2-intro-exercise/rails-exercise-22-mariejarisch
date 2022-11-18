class Paper < ApplicationRecord
    scope :specific_year, ->(int) { where("year = ?", int) }

    validates :title, presence: true
    validates :venue, presence: true
    validates :year, presence: true, numericality: { only_integer: true }

    has_and_belongs_to_many :authors
end
