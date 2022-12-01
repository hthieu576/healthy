# == Schema Information
#
# Table name: exercise_people
#
#  id                            :bigint           not null, primary key
#  user_id                       :bigint           not null
#  exercise_id                   :bigint           not null
#  exercise_time_adjustment      :integer
#  energy_comsumption_adjustment :integer
#  exercise_date                 :date
#  created_at                    :datetime         not null
#  updated_at                    :datetime         not null
#
class ExercisePerson < ApplicationRecord
	has_paper_trail

	belongs_to :user
	belongs_to :exercise
end
