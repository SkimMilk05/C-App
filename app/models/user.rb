class User < ApplicationRecord
  include Clearance::User
  has_many :image_sessions, dependent: :destroy
  has_many :surveys, dependent: :destroy
end
