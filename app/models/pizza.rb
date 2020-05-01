class Pizza < ApplicationRecord
    belongs_to :restaurant

    validates :name, presence: true
    validates :name, uniqueness: true
end
