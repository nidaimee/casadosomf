class CreateDebits < ActiveRecord::Migration[5.2]
  def change
    create_table :debits do |t|
      t.references :client, foreign_key: true
      t.references :product, foreign_key: true
      t.text :description

      t.timestamps
    end
  end
end
