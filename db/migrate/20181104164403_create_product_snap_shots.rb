class CreateProductSnapShots < ActiveRecord::Migration[5.2]
  def change
    create_table :product_snap_shots do |t|
      t.string :order_id
      t.string :product_id
      t.string :name
      t.decimal :price
      t.integer :quantity
      t.string :image_link
      t.text :description

      t.timestamps
    end
  end
end
