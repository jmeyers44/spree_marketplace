class AddOperatingHoursToMerchant < ActiveRecord::Migration[5.1]
  def change
    add_column :spree_merchants, :store_state, :string
    add_column :spree_merchants, :operating_hours, :string
  end
end
