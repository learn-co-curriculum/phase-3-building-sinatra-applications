class CreateWorkout < ActiveRecord::Migration[6.1]
  def change
    create_table :workouts do |t|
      t.string :name
      t.boolean :completed
    end
  end
end
