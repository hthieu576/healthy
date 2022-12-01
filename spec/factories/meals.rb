# == Schema Information
#
# Table name: meals
#
#  id         :bigint           not null, primary key
#  meal_type  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
FactoryBot.define do
  factory :meal do
    trait :morning do
      meal_type { 'morning' }  
    end

    trait :lunch do
      meal_type { 'lunch' }  
    end

    trait :dinner do
      meal_type { 'dinner' }  
    end

    trait :snack do
      meal_type { 'snack' }  
    end
  end
end
