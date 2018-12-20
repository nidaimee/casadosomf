class ChangeTotalToBeDecimalInProductQuantities < ActiveRecord::Migration[5.2]
  def change
    change_column :product_quantities, :total, :decimal
  end
end
