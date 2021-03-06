class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :title
      t.string :description
      t.decimal :price
      t.text :observations

      t.timestamps
    end
  end
end
