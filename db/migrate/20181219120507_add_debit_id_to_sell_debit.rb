class AddDebitIdToSellDebit < ActiveRecord::Migration[5.2]
  def change
    add_column :sell_debits , :debit_id, :integer
  end
end
