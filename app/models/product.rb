class Product < ApplicationRecord
  enum status: {active: 1, unactive: 0}
  has_many :reviews, dependent: :destroy
  belongs_to :category
end
