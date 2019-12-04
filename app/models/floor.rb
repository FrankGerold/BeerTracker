class Floor < ApplicationRecord
  has_many :keg_floors, dependent: :destroy
  has_many :kegs, through: :keg_floors
end
