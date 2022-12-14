# == Schema Information
#
# Table name: exercise_people
#
#  id                            :bigint           not null, primary key
#  user_id                       :bigint           not null
#  exercise_id                   :bigint           not null
#  exercise_time_adjustment      :integer
#  energy_comsumption_adjustment :integer
#  exercise_date                 :date
#  created_at                    :datetime         not null
#  updated_at                    :datetime         not null
#
FactoryBot.define do
  factory :exercise_person do
    user { create :user }
    exercise { create :exercise }
    exercise_time_adjustment { 300 }
    energy_comsumption_adjustment { 100 }
    exercise_date { Date.today }
  end
end
