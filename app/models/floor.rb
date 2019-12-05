class Floor < ApplicationRecord
  has_many :keg_floors, dependent: :destroy
  has_many :kegs, through: :keg_floors
  validates :building, presence: true 
  validates :floor_number, presence: true, inclusion: 1..10 
end
