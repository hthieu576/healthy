# == Schema Information
#
# Table name: nutrition_facts
#
#  id          :bigint           not null, primary key
#  calories    :integer
#  protein     :integer
#  cholesterol :integer
#  calcium     :integer
#  food_id     :bigint           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class NutritionFact < ApplicationRecord
	belongs_to :food
end
