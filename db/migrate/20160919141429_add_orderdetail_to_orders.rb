class AddOrderdetailToOrders < ActiveRecord::Migration[5.0]
  def change
    # Get rid of orderxRef
    # Create necessary references and index
    remove_column :orders, :orderxRef
    add_reference :orders, :orderdetail, foreign_key: true
    add_index     :orders, :orderid
  end
end
