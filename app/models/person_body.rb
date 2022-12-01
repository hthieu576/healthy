# == Schema Information
#
# Table name: person_bodies
#
#  id          :bigint           not null, primary key
#  user_id     :bigint           not null
#  note        :text(65535)
#  weight      :decimal(10, )
#  weight_date :datetime
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class PersonBody < ApplicationRecord
	has_paper_trail
	belongs_to :user

	validates :weight, :weight_date, presence: true
end
