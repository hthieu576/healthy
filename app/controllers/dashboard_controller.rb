# frozen_string_literal: true

class DashboardController < ApplicationController
  def index
    if current_user
      @menu_items = current_user.menu_items.page(params[:page]).per(params[:limit]).order(id: :desc)
      @person_bodies = {}
      current_user.person_bodies.group(:weight_date).each do |person_body|
        @person_bodies[person_body.weight_date.strftime("%Y-%m-%d")] = person_body.weight
      end
    end

    respond_to do |format|
      format.html
      format.json { render json: @menu_items, each_serializer: MenuItemSerializer }
    end
  end
end
