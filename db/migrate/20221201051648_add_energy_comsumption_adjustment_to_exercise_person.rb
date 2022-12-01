class AddEnergyComsumptionAdjustmentToExercisePerson < ActiveRecord::Migration[5.2]
  def change
    add_column :exercise_people, :energy_comsumption_adjustment, :integer, after: :exercise_time_adjustment
  end
end
