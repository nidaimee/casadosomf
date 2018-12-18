class Discount < ApplicationRecord
  include Fae::BaseModelConcern
  has_many :sales, dependent: :destroy

  def fae_display_field
    title
  end

end
