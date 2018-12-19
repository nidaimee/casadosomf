class AddQuantityToSellProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :sell_products, :quantity, :integer
  end
end
