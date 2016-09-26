class CreateOrderdetails < ActiveRecord::Migration[5.0]
  def change
    create_table :orderdetails do |t|
      t.integer :quantity
      t.string :garmentsize
      t.references :order, foreign_key: true
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
