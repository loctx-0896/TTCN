class Category < ActiveRecord::Base
  has_many :products, dependent: :destroy
  has_many :child_categories, class_name: Category.name,
    foreign_key: :parent_id, dependent: :destroy
  scope :parent_categories, ->{where "parent_id IS NULL"}
  scope :child_categories, ->(id){where parent_id: id}
  scope :sort_categories, ->{order(created_at: :desc)}
end
