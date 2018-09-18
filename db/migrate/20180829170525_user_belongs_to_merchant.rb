class UserBelongsToMerchant < ActiveRecord::Migration[5.1]
  def change
    add_column Spree.user_class.table_name, :merchant_id, :integer
    add_index Spree.user_class.table_name, :merchant_id
  end
end
