class DetailOrder < ApplicationRecord
  belongs_to :order
  belongs_to :product
  scope :of_product_id, -> product_ids do
    where(product_id: product_ids) if product_ids.present?
  end
end
