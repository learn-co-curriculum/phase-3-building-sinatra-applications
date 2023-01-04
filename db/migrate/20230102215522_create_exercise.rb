class CreateExercise < ActiveRecord::Migration[6.1]
  def change
    create_table :exercises do |t|
      t.string :name
      t.string :muscle
      t.integer :exercise_id
      t.integer :workout_id
      t.integer :rep_and_set_id
    end
  end
end
