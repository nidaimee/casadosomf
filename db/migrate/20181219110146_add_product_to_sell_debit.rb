class AddProductToSellDebit < ActiveRecord::Migration[5.2]
  def change
    add_reference :sell_debits, :product, foreign_key: true
  end
end
