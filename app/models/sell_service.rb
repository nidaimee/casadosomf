class SellService < ApplicationRecord
  belongs_to :service
  belongs_to :sell, dependent: :destroy
end
