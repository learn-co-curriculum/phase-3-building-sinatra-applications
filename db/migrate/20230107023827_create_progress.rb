class CreateProgress < ActiveRecord::Migration[6.1]
  def change
    create_table :progresses do |t|
      t.date :date 
      t.string :name
      t.text :reps_sets_weights, null: false, default: "{}"
    end
  end
end
