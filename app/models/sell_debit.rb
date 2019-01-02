class SellDebit < ApplicationRecord
  include Fae::BaseModelConcern
  validates :client, presence: true
  belongs_to :debit

  def fae_display_field
    client.name
  end
  def self.for_fae_index
   order(:id)
  end
  belongs_to :product
  belongs_to :client


end
