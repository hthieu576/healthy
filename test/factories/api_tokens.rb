# == Schema Information
#
# Table name: api_tokens
#
#  id            :bigint           not null, primary key
#  user_id       :bigint           not null
#  access_key    :string(255)      not null
#  secret_key    :string(255)      not null
#  refresh_token :string(255)
#  expire_at     :datetime
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
FactoryBot.define do
  factory :api_token do
    
  end
end
