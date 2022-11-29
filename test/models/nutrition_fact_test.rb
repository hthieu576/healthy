# == Schema Information
#
# Table name: nutrition_facts
#
#  id          :bigint           not null, primary key
#  calories    :integer
#  protein     :integer
#  cholesterol :integer
#  calcium     :integer
#  food_id     :bigint           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require 'test_helper'

class NutritionFactTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
