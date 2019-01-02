class Service < ApplicationRecord
  include Fae::BaseModelConcern

  has_fae_image :hero_image

  def fae_display_field
    title
  end
  def self.for_fae_index
    order(created_at: :desc)
  end

end
