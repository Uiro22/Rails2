class Reservation < ApplicationRecord
    belongs_to :user_id
    belongs_to :room_id
  
    validates :start_at, presence: true
    validates :end_at, presence: true
    validates :price, presence: true
  end
