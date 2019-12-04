class Floor < ApplicationRecord
  has_many :keg_floors
  has_many :kegs, through: :keg_floors
end
