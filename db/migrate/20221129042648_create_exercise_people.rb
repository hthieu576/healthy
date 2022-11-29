class CreateExercisePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :exercise_people do |t|
      t.belongs_to :user, index: true, foreign_key: true, null: false
      t.belongs_to :exercise, index: true, foreign_key: true, null: false
      t.integer :exercise_time_adjustment
      t.timestamps
    end
  end
end
