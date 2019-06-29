class CreateUnits < ActiveRecord::Migration[5.1]
  def change
    create_table :units do |t|
      t.string :title
      t.string :body
      t.string :shortbody

      t.timestamps
    end
  end
end
