class AddEnterToProductQuantity < ActiveRecord::Migration[5.2]
  def change
    add_column :product_quantities, :enter, :integer
  end
end
