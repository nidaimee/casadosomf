class ProductQuantity < ApplicationRecord
  include Fae::BaseModelConcern
  belongs_to :product

  before_save :set_total

  def fae_display_field
    product.title
  end
  def self.for_fae_index
   order(:id)
 end

  private

  def set_total
    total = 0
    if self.present?
      total = self.enter - self.quantity
    end

    self.total = total
end
end
