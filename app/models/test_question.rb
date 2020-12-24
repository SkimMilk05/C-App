class TestQuestion < ApplicationRecord
   belongs_to :test
   has_many :test_options
   has_one :test_answer


end
