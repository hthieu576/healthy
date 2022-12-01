# == Schema Information
#
# Table name: menu_items
#
#  id                      :bigint           not null, primary key
#  food_id                 :bigint           not null
#  meal_id                 :bigint           not null
#  user_id                 :bigint           not null
#  serve_datetime          :datetime
#  portion_size_adjustment :decimal(10, )
#  active                  :boolean          default(TRUE)
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#
FactoryBot.define do
  factory :menu_item do
    food { create :food }
    meal { create :meal }
    user { create :user }
    serve_datetime { Time.zone.now }
    portion_size_adjustment { 1 }
  end
end
