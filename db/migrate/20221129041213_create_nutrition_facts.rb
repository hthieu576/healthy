class CreateNutritionFacts < ActiveRecord::Migration[5.2]
  def change
    create_table :nutrition_facts do |t|
      t.integer :calories
      t.integer :protein
      t.integer :cholesterol
      t.integer :calcium
      t.belongs_to :food, index: true, foreign_key: true, null: false
      t.timestamps
    end
  end
end
