class CreateSuppliers < ActiveRecord::Migration[7.0]
  def change
    create_table :suppliers do |t|
      t.string :name
      t.string :address
      t.integer :phone
      t.string :email
      t.string :others_details

      t.timestamps
    end
  end
end
