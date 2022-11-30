# frozen_string_literal: true

module V1
  module Entities
    class MenuItem < Base
      expose :serve_time
      expose :food_name
      expose :meal_type
      expose :image

      def food_name
        object.food.name
      end

      def meal_type
        object.meal.meal_type
      end

      def serve_time
        object.serve_datetime.strftime("%H:%m")
      end

      def image
        Rails.application.routes.url_helpers.rails_blob_path(object.image , only_path: true) if object.image.attached?
      end
    end
  end
end