# == Schema Information
#
# Table name: exercise_people
#
#  id                       :bigint           not null, primary key
#  user_id                  :bigint           not null
#  exercise_id              :bigint           not null
#  exercise_time_adjustment :integer
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#
FactoryBot.define do
  factory :exercise_person do
    
  end
end