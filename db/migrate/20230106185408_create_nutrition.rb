class CreateNutrition < ActiveRecord::Migration[6.1]
  def change
    create_table :foods do |t|
      t.integer :calories
      t.integer :protein
      t.integer :carbohydrates
      t.integer :fats 
    end 

    create_table :total_nutrition do |t|
      t.integer :total_calories
      t.integer :total_protein
      t.integer :total_carbohydrates
      t.integer :total_fats
    end

  end
end
