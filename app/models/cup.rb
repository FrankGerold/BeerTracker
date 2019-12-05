class Cup < ApplicationRecord
  belongs_to :user
  belongs_to :keg
  validates :rating, presence: true, inclusion: 1..10 
  validates :user_id, presence: true 
  validates :keg_id, presence: true 
end
