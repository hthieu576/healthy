class ExercisePersonDecorator < Draper::Decorator
  def time_adjustment
    "#{object.exercise_time_adjustment / 60} min"
  end

  def energy_consumption
    "#{object.energy_comsumption_adjustment}kcal"
  end
end
