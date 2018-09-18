class AddMerchantIdToOrders < ActiveRecord::Migration[5.1]
  def change
    add_column :spree_orders, :merchant_id, :integer
    add_index :spree_orders, :merchant_id
  end
end
