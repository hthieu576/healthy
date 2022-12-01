# == Schema Information
#
# Table name: person_bodies
#
#  id          :bigint           not null, primary key
#  user_id     :bigint           not null
#  note        :text(65535)
#  weight      :decimal(5, 2)
#  weight_date :datetime
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
FactoryBot.define do
  factory :person_body do
    user { create :user }
    note { Faker::Lorem.sentence }
    weight { 55.3 }
    weight_date { Date.today }
  end
end
