class AddTotalToProductQuantity < ActiveRecord::Migration[5.2]
  def change
    add_column :product_quantities, :total, :integer
  end
end
