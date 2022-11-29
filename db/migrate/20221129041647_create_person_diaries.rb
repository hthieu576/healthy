class CreatePersonDiaries < ActiveRecord::Migration[5.2]
  def change
    create_table :person_diaries do |t|
      t.belongs_to :user, index: true, foreign_key: true, null: false
      t.date :diary_date
      t.text :note
      t.timestamps
    end
  end
end
