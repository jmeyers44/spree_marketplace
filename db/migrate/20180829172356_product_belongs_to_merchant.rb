class ProductBelongsToMerchant < ActiveRecord::Migration[5.1]
  def change
    add_column :spree_products, :merchant_id, :integer
    add_index :spree_products, :merchant_id
  end
end
