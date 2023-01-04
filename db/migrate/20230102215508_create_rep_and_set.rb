class CreateRepAndSet < ActiveRecord::Migration[6.1]
  def change
    create_table :rep_and_sets do |t|
      t.integer :reps
      t.integer :sets
      t.integer :rep_and_set_id
    end
  end
end
