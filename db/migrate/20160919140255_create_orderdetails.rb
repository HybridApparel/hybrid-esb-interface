class CreateOrderdetails < ActiveRecord::Migration[5.0]
  def change
    create_table :orderdetails do |t|
      t.string :stylename
      t.integer :quantity
      t.string :garmentsize
    end
  end
end
