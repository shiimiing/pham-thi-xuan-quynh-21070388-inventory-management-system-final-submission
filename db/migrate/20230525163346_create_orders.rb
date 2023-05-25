class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.float :unit_price
      t.integer :quantity
      t.integer :discount
      t.float :total
      t.date :date
      t.string :payment_type
      t.references :product, null: false, foreign_key: true
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
