class CreateSpreeMerchants < ActiveRecord::Migration[5.1]
  def change
    create_table :spree_merchants do |t|
        t.boolean    :active, default: false, null: false
        t.references :address
        t.decimal    :commission_flat_rate, :precision => 8, :scale => 2, :default => 0.0, :null => false
        t.float      :commission_percentage, default: 0.0, null: false
        t.string     :email
        t.string     :name
        t.string     :url
        t.datetime   :deleted_at
        t.timestamps
    end
    # add_index :spree_merchants, :address_id
    add_index :spree_merchants, :deleted_at
    add_index :spree_merchants, :active    
  end
end
