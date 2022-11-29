class CreateMenuItems < ActiveRecord::Migration[5.2]
  def change
    create_table :menu_items do |t|
      t.belongs_to :food, index: true, foreign_key: true, null: false
      t.belongs_to :meal, index: true, foreign_key: true, null: false
      t.belongs_to :user, index: true, foreign_key: true, null: false
      t.datetime :serve_datetime
      t.decimal :portion_size_adjustment
      t.boolean :active, default: true
      t.timestamps
    end
  end
end
