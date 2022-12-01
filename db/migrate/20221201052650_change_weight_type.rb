class ChangeWeightType < ActiveRecord::Migration[5.2]
  def change
    change_column :person_bodies, :weight, :decimal, precision: 5, scale: 2
  end
end
