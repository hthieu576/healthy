# == Schema Information
#
# Table name: foods
#
#  id                 :bigint           not null, primary key
#  name               :string(255)      not null
#  description        :string(255)
#  portion_amount     :decimal(10, )
#  unit_of_measure_id :bigint           not null
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#
FactoryBot.define do
  factory :food do
    name { 'Pho' }
    description { 'pho bo' }
    portion_amount { 1 }
    unit_of_measure { create :unit_of_measure }
  end
end
