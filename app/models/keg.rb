class Keg < ApplicationRecord
  has_many :cups
  has_many :users, through: :cups
end
