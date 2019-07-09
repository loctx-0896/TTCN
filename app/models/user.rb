class User < ActiveRecord::Base
  enum activated: {active: 1, unactive: 0}
  enum role: {guess: 0, admin: 1}
  has_many :orders
  has_many :contacts, dependent: :destroy
  has_many :reviews, dependent: :destroy
end
