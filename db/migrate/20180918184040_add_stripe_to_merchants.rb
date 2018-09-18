class AddStripeToMerchants < ActiveRecord::Migration[5.1]
  def change
    add_column :spree_merchants, :stripe_publishable_key, :string
    add_column :spree_merchants, :stripe_user_id, :string
  end
end
