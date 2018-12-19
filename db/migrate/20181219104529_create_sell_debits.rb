class CreateSellDebits < ActiveRecord::Migration[5.2]
  def change
    create_table :sell_debits do |t|
      t.decimal :price
      t.date :date
      t.references :client, foreign_key: true
      t.text :description

      t.timestamps
    end
  end
end
