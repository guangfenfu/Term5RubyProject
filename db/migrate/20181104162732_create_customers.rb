class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :password
      t.string :address
      t.string :city
      t.string :phone
      t.references :province, foreign_key: true

      t.timestamps
    end
  end
end
