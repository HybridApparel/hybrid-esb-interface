class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    
    create_table :products do |t|
      t.string :styleident
      t.string :product_name
      t.string :product_description
      t.string :licensexref
      t.string :product_thumb_url
      t.string :product_preview_url
      t.string :product_print_image_url
      t.string :trim_codes
      t.string :necklabel_binid
      t.string :hangtag_binid
      t.references :orderdetail, foreign_key: true

      t.timestamps
    end
  end
end
