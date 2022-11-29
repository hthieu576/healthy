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
class MenuItem < ApplicationRecord
	belongs_to :food
	belongs_to :meal
	belongs_to :user
end
