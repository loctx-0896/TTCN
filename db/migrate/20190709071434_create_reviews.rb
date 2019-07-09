class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.text :comment_content
      t.integer :parent_comment_id
      t.integer :rating, default: 0
      t.integer :status_liked, default: 0
      t.references :user, foreign_key: true
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
