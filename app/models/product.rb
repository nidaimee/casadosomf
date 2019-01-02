class Product < ApplicationRecord
  include Fae::BaseModelConcern
  validates :title, presence: true
  validates :price, presence: true
  has_fae_image :hero_image

  def fae_display_field
    title
  end
  
  def self.for_fae_index
    order(created_at: :desc)
  end
  has_many :product_quantities
  has_many :products, through: :product_quantities


end
