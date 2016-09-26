class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :styleident
      t.string :product_name
      t.string :product_description
      t.string :product_thumb_url
      t.string :product_preview_url
      t.string :product_print_url
      t.string :trim_codes
      t.string :necklabel_id
      t.string :hangtag_id

      t.timestamps
    end
  end
end
