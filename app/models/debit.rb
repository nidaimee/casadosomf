class Debit < ApplicationRecord
  include Fae::BaseModelConcern
  validates :client, presence: true
  belongs_to :client
  belongs_to :product

  has_many :sell_debits, dependent: :destroy


  accepts_nested_attributes_for :sell_debits, reject_if: :all_blank, allow_destroy: true


  def fae_display_field
      product.title
  end

  def self.for_fae_index
   order(:id)
  end

end
