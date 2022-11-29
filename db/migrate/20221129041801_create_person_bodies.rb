class CreatePersonBodies < ActiveRecord::Migration[5.2]
  def change
    create_table :person_bodies do |t|
      t.belongs_to :user, index: true, foreign_key: true, null: false
      t.text :note
      t.integer :weight
      t.datetime :weight_date
      t.timestamps
    end
  end
end
