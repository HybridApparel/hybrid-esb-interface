class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :orderident
      t.string :orderstatus

      t.timestamps
    end
  end
end
