class AddPermalinkToMerchants < ActiveRecord::Migration[5.1]
  def change
    add_column :spree_merchants, :slug, :string
    add_index :spree_merchants, :slug, unique: true
  end
end
