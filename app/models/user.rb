class User < ApplicationRecord
  has_many :cups
  has_many :kegs, through: :cups
  has_many :keg_floors
end
