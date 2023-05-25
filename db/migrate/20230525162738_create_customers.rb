class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.integer :phone
      t.string :email
      t.references :staff, null: false, foreign_key: true

      t.timestamps
    end
  end
end
