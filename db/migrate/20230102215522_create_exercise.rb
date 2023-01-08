class CreateExercise < ActiveRecord::Migration[6.1]
  def change
    create_table :exercises do |t|
      t.string :name
      t.string :muscle
      t.integer :reps
      t.integer :sets
      t.integer :workout_id
    end
  end
end
