# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

food_name = ['Pho', 'Soup', 'Braised salmon', 'Sushi']
morning = Meal.create!(meal_type: :morning)
lunch = Meal.create!(meal_type: :lunch)
dinner = Meal.create!(meal_type: :dinner)
snack = Meal.create!(meal_type: :snack)

meal_ids = Meal.pluck(:id)
unit = UnitOfMeasure.create!(name: 'gram', abbreviation: 'g')

3.times do |i|
	user = User.create!(first_name: 'Luke',
										 last_name: "Luck_#{i}",
										 address: "district #{i+1}",
										 email: "user_#{i+1}@gmail.com",
										 password: '123456',
										 password_confirmation: '123456')

	food = Food.create!(name: food_name[i], unit_of_measure_id: unit.id, description: food_name[i], portion_amount: 1)
	exercise = Exercise.create!(name: 'marathon', description: 'run 5km marathon', energy_comsumption: 250, exercise_time: 600, note: 'sample')
	nutrition_fact = NutritionFact.create!(food: food, calories: 100, protein: 50, cholesterol: 50, calcium: 10)
	8.times do |j|
		menu_item = MenuItem.create!(user: user, meal_id: meal_ids.sample, food: food, serve_datetime: Time.zone.now, portion_size_adjustment: 1)
		menu_item.image.attach(io: File.open("#{Rails.root}/app/assets/images/meal.png"), filename: "meal#{j+1}.png", content_type: 'image/png')
		person_body = PersonBody.create!(user: user, weight: (50..55).to_a.sample, weight_date: "#{8 - j}".to_i.days.ago)
		person_diary = PersonDiary.create!(user: user, diary_date: "#{8 - j}".to_i.days.ago.to_date, note: 'sample data')
		exercise_person = ExercisePerson.create!(user: user, exercise: exercise, exercise_time_adjustment: 600, energy_comsumption_adjustment: 200, exercise_date: "#{8 - j}".to_i.days.ago.to_date)
	end
end

