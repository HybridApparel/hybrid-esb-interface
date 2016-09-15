class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.integer :orderid
      t.string :orderxRef
      t.string :firstname
      t.string :lastname
      t.time :created
      t.time :modified
      t.integer :orderstatus

      t.timestamps
    end
  end
end
