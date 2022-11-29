# == Schema Information
#
# Table name: meals
#
#  id         :bigint           not null, primary key
#  meal_type  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Meal < ApplicationRecord
  has_many :menu_items, dependent: :destroy

	enum meal_type: {
    morning: 1,
    lunch: 2,
    dinner: 3,
    snack: 4
  }
end
