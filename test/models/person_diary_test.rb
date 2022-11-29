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
require 'test_helper'

class PersonDiaryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
