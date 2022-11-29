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
class Food < ApplicationRecord
	has_many :menu_items, dependent: :destroy
	has_one :nutrition_fact, dependent, :destroy
	belongs_to :unit_of_measure

	validates :name, presence: true
end
