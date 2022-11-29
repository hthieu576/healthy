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
class UnitOfMeasure < ApplicationRecord
	validates :name, presence: true
end
