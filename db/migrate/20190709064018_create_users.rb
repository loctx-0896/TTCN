class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.datetime :reset_sent_at
      t.integer :activated, default: 0
      t.integer :role, default: 0
      t.string :name
      t.string :email, unique: true
      t.string :phone
      t.string :password_digest
      t.string :remember_digest
      t.string :activation_digest
      t.string :reset_digest
      t.string :fb_token
      t.string :gg_token
      t.string :tw_token

      t.timestamps
    end
  end
end
