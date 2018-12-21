class Sell < ApplicationRecord
  include Fae::BaseModelConcern
  enum status: { Finalizado: 0, Aberto: 1,  Cancelado: 2 }
  validates :client, presence: true
  validates :discount, presence: false

  belongs_to :discount
  belongs_to :client

  has_many :sell_products, dependent: :destroy
  has_many :products, through: :sell_products


  accepts_nested_attributes_for :sell_products, reject_if: :all_blank, allow_destroy: true

  has_many :sell_services, dependent: :destroy
  has_many :services, through: :sell_services

  before_save :set_total

  def fae_display_field
    client.name
  end

  def self.for_fae_index
    order(:id)
  end

  private

  def set_total
    total = 0
    self.sell_products.each {|p| total += p.quantity * p.product.price }
    self.services.each {|s| total += s.price }

    if self.discount.present?
      total = total - self.discount.value
    end

    total = (total >= 0)? total : 0
    self.total = total
  end
end
