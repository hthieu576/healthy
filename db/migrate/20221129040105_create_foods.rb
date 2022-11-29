class CreateFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :foods do |t|
      t.string :name, null: false
      t.string :description
      t.decimal :portion_amount
      t.belongs_to :unit_of_measure, index: true, foreign_key: true, null: false

      t.timestamps
    end
  end
end
