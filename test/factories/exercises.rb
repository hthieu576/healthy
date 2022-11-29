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
    
  end
end
