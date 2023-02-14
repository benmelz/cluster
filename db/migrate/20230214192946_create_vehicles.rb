class CreateVehicles < ActiveRecord::Migration[7.0]
  def change
    create_table :vehicles do |t|
      t.string :vin, index: { unique: true }, null: false
      t.timestamps
    end
  end
end
