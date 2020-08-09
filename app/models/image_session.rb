class ImageSession < ApplicationRecord
  belongs_to :user
  belongs_to :image
  has_many :blue_areas
  has_many :green_areas
end
