class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.integer :price
      t.text :information
      t.text :description

      t.timestamps
    end
  end
end
