class Discount < ApplicationRecord
  include Fae::BaseModelConcern
  has_many :sales, dependent: :destroy
  validates :value, presence: true
  validates :title, presence: true

  def fae_display_field
    title
  end

end
