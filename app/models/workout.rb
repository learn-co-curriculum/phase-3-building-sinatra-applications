class Workout < ActiveRecord::Base
  has_many :exercises
  has_many :reps_and_sets, through: :exercises
end
