class AddFieldToUnits < ActiveRecord::Migration[5.1]
  def change
    add_column :units, :count, :integer
  end
end
