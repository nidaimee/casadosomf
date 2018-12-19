class Product < ApplicationRecord
  include Fae::BaseModelConcern
  validates :title, presence: true
  validates :price, presence: true
  has_fae_image :hero_image

  def fae_display_field
    title
  end
  has_many :product_quantities
  

end
