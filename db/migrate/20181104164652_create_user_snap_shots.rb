class CreateUserSnapShots < ActiveRecord::Migration[5.2]
  def change
    create_table :user_snap_shots do |t|
      t.string :order_id
      t.string :customer_id
      t.string :name
      t.string :address
      t.string :city
      t.string :province_id
      t.string :phone

      t.timestamps
    end
  end
end
