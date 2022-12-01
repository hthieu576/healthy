class UserDecorator < Draper::Decorator
  def full_name
    "#{object.first_name} #{object.last_name}"
  end

  def exercise_people_by_date(date)
    object.exercise_people.includes(:exercise).where(exercise_date: date)
  end
end
