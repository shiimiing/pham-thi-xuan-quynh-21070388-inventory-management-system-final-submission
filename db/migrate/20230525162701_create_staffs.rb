class CreateStaffs < ActiveRecord::Migration[7.0]
  def change
    create_table :staffs do |t|
      t.string :full_name
      t.string :address
      t.integer :phone
      t.string :email
      t.string :username
      t.string :password
      t.references :role, null: false, foreign_key: true

      t.timestamps
    end
  end
end
