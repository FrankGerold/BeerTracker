class Keg < ApplicationRecord
  has_many :cups, dependent: :destroy
  has_many :users, through: :cups
  has_many :keg_floors, dependent: :destroy
  has_many :floors, through: :keg_floors 
  validates :name, presence: true 
  def name_and_type
    "#{self.name} - #{self.beer_type}"
  end 
end
