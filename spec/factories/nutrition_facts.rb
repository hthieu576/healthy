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
FactoryBot.define do
  factory :nutrition_fact do
    food { create :food }
    calories { 100 }
    protein { 50 }
    cholesterol { 20 }
    calcium { 100 }
  end
end
