class KegFloor < ApplicationRecord
  belongs_to :user
  belongs_to :keg
  belongs_to :floor
  validates :user_id, presence: true 
  validates :keg_id, presence: true 
  validates :floor_id, presence: true 
end
