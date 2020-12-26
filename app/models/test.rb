class Test < ApplicationRecord
   belongs_to :user
   has_many :test_answers

   accepts_nested_attributes_for :test_answers

   amoeba do
      enable
   end #for deep copy
end
