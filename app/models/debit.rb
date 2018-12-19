class Debit < ApplicationRecord
  include Fae::BaseModelConcern
  validates :client, presence: true

  has_many :sell_debits, dependent: :destroy
  has_many :debits, through: :sell_debits

  accepts_nested_attributes_for :sell_debits, reject_if: :all_blank, allow_destroy: true


  def fae_display_field
      id
  end

  def self.for_fae_index
   order(:id)
  end
  belongs_to :client
  belongs_to :product
end
