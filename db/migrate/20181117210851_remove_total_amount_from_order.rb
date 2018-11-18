class RemoveTotalAmountFromOrder < ActiveRecord::Migration[5.2]
  def change
    remove_column :orders, :total_amount, :integer
  end
end
