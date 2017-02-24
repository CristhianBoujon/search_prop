class CreateProperties < ActiveRecord::Migration[5.0]
  def change
    create_table :properties do |t|
      t.string :name
      t.string :detail
      t.float :price
      t.string :type
      t.timestamps
    end
  end
end
