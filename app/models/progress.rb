class Progress < ActiveRecord::Base
    serialize :reps_sets_weights, Hash
    serialize :date, Date 
    serialize :name, String 
end