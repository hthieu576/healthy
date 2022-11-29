class CreateExercises < ActiveRecord::Migration[5.2]
  def change
    create_table :exercises do |t|
      t.string :name, null: false
      t.string :description
      t.integer :energy_comsumption
      t.integer :exercise_time
      t.text :note
      t.timestamps
    end
  end
end
