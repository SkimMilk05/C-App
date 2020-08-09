class Image < ApplicationRecord
  has_many :image_sessions
  has_many :green_areas
  has_many :blue_areas
  belongs_to :image_set

end
