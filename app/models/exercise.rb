class Exercise < ActiveRecord::Base
  belongs_to :workout 
  belongs_to :rep_and_set
end
