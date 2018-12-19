class SellDebit < ApplicationRecord
  include Fae::BaseModelConcern
  validates :client, presence: true


  def fae_display_field
    title
  end
  def self.for_fae_index
   order(:id)
  end
  belongs_to :product
  belongs_to :client
  belongs_to :sell_debit

end
