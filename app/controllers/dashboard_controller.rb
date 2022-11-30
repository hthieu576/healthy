# frozen_string_literal: true

class DashboardController < ApplicationController
  def index
    if current_user
      @menu_items = current_user.menu_items.page(params[:page]).per(params[:limit]).order(id: :desc)
    end

    respond_to do |format|
      format.html
      format.json { render json: @menu_items, each_serializer: MenuItemSerializer }
    end
  end
end
