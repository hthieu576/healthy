class CreateUnitOfMeasures < ActiveRecord::Migration[5.2]
  def change
    create_table :unit_of_measures do |t|
      t.string :name, null: false
      t.string :abbreviation

      t.timestamps
    end
  end
end
