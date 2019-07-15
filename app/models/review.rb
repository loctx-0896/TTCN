class Review < ApplicationRecord
  enum status_liked: {like: 1, dislike: 0}
  belongs_to :product
  belongs_to :user
end
