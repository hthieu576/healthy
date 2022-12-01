# == Schema Information
#
# Table name: menu_items
#
#  id                      :bigint           not null, primary key
#  food_id                 :bigint           not null
#  meal_id                 :bigint           not null
#  user_id                 :bigint           not null
#  serve_datetime          :datetime
#  portion_size_adjustment :decimal(10, )
#  active                  :boolean          default(TRUE)
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#
class MenuItemSerializer < ActiveModel::Serializer
  attributes :serve_time, :food_name, :meal_type, :image

  def food_name
    object.food.name
  end

  def image
    Rails.application.routes.url_helpers.rails_blob_path(object.image , only_path: true) if object.image.attached?
  end
end
