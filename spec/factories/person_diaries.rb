# == Schema Information
#
# Table name: person_diaries
#
#  id         :bigint           not null, primary key
#  user_id    :bigint           not null
#  diary_date :date
#  note       :text(65535)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
FactoryBot.define do
  factory :person_diary do
    user { create :user }
    diary_date { Date.today }
    note { Faker::Lorem.sentence }
  end
end
