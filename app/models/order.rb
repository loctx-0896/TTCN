class Order < ApplicationRecord
  enum status: {order_success: 1, delivering: 2, delivered: 3}
  has_many :detail_orders, dependent: :destroy
  belongs_to :user
end
