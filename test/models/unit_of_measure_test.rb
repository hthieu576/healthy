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
require 'test_helper'

class UnitOfMeasureTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
