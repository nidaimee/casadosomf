class SellProduct < ApplicationRecord
  belongs_to :product
  belongs_to :sell, dependent: :destroy
end
