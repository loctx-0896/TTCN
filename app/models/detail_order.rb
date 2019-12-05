class DetailOrder < ApplicationRecord
  belongs_to :order
  belongs_to :product
  scope :of_product_id, -> product_ids do
    where(product_id: product_ids) if product_ids.present?
  end
  scope :find_by_order_id_vip, -> order_id do
    where(order_id: order_id) if order_id.present?
  end
end
