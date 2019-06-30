class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :firstname
      t.string :lastname
      t.string :from
      t.string :to
      t.integer :count
      t.datetime :date
      t.integer :user_id

      t.timestamps
    end
  end
end
