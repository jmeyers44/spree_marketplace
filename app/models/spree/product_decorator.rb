Spree::Product.class_eval do

  belongs_to :merchant, touch: true
  
  self.whitelisted_ransackable_attributes = %w[description name slug discontinue_on merchant_id active]

  # Returns true if the product has a drop shipping merchant.
  def merchant?
    merchant.present?
  end

end