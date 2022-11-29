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
require 'test_helper'

class ExerciseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
