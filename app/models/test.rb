class Test < ApplicationRecord
   belongs_to :user
   has_many :test_questions
   has_many :test_answers, through: :test_questions
end