# == Schema Information
#
# Table name: exercises
#
#  id                 :bigint           not null, primary key
#  name               :string(255)      not null
#  description        :string(255)
#  energy_comsumption :integer
#  exercise_time      :integer
#  note               :text(65535)
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#
FactoryBot.define do
  factory :exercise do
    name { 'marathon' }
    description { 'run 5km marathon' }
    energy_comsumption { 250 }
    exercise_time { 600 }
    note { Faker::Lorem.sentence }
  end
end
