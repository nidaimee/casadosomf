class ProductQuantity < ApplicationRecord
  include Fae::BaseModelConcern

  validates :quantity, presence: true

  def fae_display_field
    quantity
  end
  def self.for_fae_index
   order(:id)
 end

  belongs_to :product
end
