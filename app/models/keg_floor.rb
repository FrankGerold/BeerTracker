class KegFloor < ApplicationRecord
  belongs_to :user
  belongs_to :keg
  belongs_to :floor
end
