class Product < ApplicationRecord
  enum status: {active: 1, unactive: 0}
  has_many :reviews, dependent: :destroy
  belongs_to :category
  mount_uploader :picture, PictureUploader
  scope :sort_products, ->{order(created_at: :desc)}
end
