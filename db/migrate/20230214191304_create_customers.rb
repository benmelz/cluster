class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.string :email, index: { unique: true }, null: false
      t.string :first_name, null: false
      t.string :middle_name, null: false
      t.string :last_name, null: false
      t.boolean :active, default: true, null: false
      t.timestamps
    end
  end
end
