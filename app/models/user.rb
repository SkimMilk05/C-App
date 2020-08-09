class User < ApplicationRecord
  include Clearance::User
  has_many :image_sessions, dependent: :destroy 
end
