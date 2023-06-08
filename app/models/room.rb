class Room < ApplicationRecord
    validates :name, presence: true
    validates :description, presence: true
    validates :price, presence: true, numericality: { greater_than: 0 }
    validates :max_guests, presence: true, numericality: { greater_than: 0 }
end
