class Keg < ApplicationRecord
  has_many :cups, dependent: :destroy
  has_many :users, through: :cups
  has_many :keg_floors, dependent: :destroy
  has_many :floors, through: :keg_floors 
  validates :name, presence: true 

  def name_and_type
    "#{self.name} - #{self.beer_type}"
  end 

  def average 
    if self.cups.length > 0
      @ratings = self.cups.map do |cup| 
         cup.rating 
      end
      @average = (@ratings.sum / @ratings.size.to_f)
      @average.round 
    else
      return 0
    end 
  end
  
  def beer_emoji
    @string = ""
    self.average.times do 
      @string += "🍺"
    end 
    @string
  end 
  def show_day
    self.created_at.strftime("%A, %B %e")
  end 
end 