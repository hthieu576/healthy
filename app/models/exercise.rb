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
class Exercise < ApplicationRecord
	has_paper_trail

	has_many :exercise_people
	has_many :users, through: :exercise_people

	validates :name, :description, :energy_comsumption, :exercise_time, presence: true
end
