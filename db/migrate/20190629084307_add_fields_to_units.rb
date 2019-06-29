class AddFieldsToUnits < ActiveRecord::Migration[5.1]
  def change
    add_column :units, :user_id, :integer
    add_column :units, :category_id, :integer
    add_column :units, :price, :integer
  end
end
