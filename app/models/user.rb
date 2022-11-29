# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  first_name             :string(255)      not null
#  last_name              :string(255)      not null
#  address                :string(255)      not null
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :exercise_people, dependent: :destroy
  has_many :exercises, through: :exercise_people
  has_many :menu_items, dependent: :destroy
  has_many :person_diaries, dependent: :destroy
  has_many :person_bodies, dependent: :destroy

  validates :first_name, :last_name, :email, :address, presence: true
  validates_uniqueness_of :email

  def full_name
    "#{first_name} #{last_name}"
  end
end
