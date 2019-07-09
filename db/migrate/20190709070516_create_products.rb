class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.string :picture
      t.text :detail
      t.float :price
      t.integer :status, default: 1
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
