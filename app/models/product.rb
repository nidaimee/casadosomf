class Product < ApplicationRecord
  include Fae::BaseModelConcern
  validates :title, presence: true
  validates :price, presence: true
  has_fae_image :hero_image
  def self.filter(params)
    conditions['title.id'] = params['title'] if params['title'].present?

      search = []
      if params['search'].present?
  search = ["product.title LIKE ?", "%#{params['search']}%", "%#{params['search']}%"]
  end
end
  def fae_display_field
    title
  end
  has_many :product_quantities
  has_many :products, through: :product_quantities


end
