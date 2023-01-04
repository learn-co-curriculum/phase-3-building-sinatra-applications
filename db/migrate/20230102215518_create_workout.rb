class CreateWorkout < ActiveRecord::Migration[6.1]
  def change
    create_table :workouts do |t|
      t.string :name
      t.integer :workout_id
    end
  end
end
