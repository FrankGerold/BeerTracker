class User < ApplicationRecord
  has_many :cups, dependent: :destroy
  has_many :kegs, through: :cups
  has_many :keg_floors, dependent: :destroy
end
