class KegFloor < ApplicationRecord
  belongs_to :user
  belongs_to :keg
  belongs_to :floor
  validates :user_id, presence: true
  validates :keg_id, presence: true
  validates :floor_id, presence: true

  def show_day
    self.created_at.strftime("%A, %B %e")
  end

  def newest_update
    my_kegs = KegFloor.all.select{|kf| kf.keg_id == self.keg_id }
    sorted = my_kegs.all.sort{|a, b| a.created_at.strftime("%A, %B %e") <=> b.created_at.strftime("%A, %B %e")}
    sorted.first
  end
end
