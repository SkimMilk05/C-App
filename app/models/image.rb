class Image < ApplicationRecord
  has_one_attached :diagram
  serialize :greenCoord
  serialize :blueCoord
end
