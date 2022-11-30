class MenuItemsController < ApplicationController
  before_action :authenticate_user!

  # GET /menu_items/new
  def new
    @menu_item = MenuItem.new
  end

  # POST /menu_items or /menu_items.json
  def create
    @menu_item = MenuItem.new(menu_item_params)
    respond_to do |format|
      if @menu_item.save
        @menu_item.image.attach(menu_item_params[:image])
        format.html { redirect_to root_path, notice: "Menu item was successfully created." }
        format.json { render :show, status: :created, location: @menu_item }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @menu_item.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def menu_item_params
    params.require(:menu_item).permit(:portion_size_adjustment, :food_id, :user_id, :meal_id, :serve_datetime, :image)
  end
end
