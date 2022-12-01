# == Schema Information
#
# Table name: unit_of_measures
#
#  id           :bigint           not null, primary key
#  name         :string(255)      not null
#  abbreviation :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
FactoryBot.define do
  factory :unit_of_measure do
    name { 'gram' }
    abbreviation { 'g' }
  end
end
