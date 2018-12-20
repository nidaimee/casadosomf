class ChangePriceToBeDecimalInServices < ActiveRecord::Migration[5.2]
  def change
    change_column :services, :price, :decimal

  end
end
