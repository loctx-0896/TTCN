class CreateDetailOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :detail_orders do |t|
      t.integer :quantity, default: 1
      t.float :current_price
      t.string :name_product
      t.references :order, foreign_key: true
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
