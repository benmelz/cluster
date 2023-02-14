class AddMakeModelAndYearToVehicles < ActiveRecord::Migration[7.0]
  def change
    change_table :vehicles do |t|
      t.string :make, null: false
      t.string :model, null: false
      t.integer :year, null: false
    end
  end
end
