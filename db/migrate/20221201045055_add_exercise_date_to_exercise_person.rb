class AddExerciseDateToExercisePerson < ActiveRecord::Migration[5.2]
  def change
    add_column :exercise_people, :exercise_date, :date, after: :exercise_time_adjustment
  end
end
