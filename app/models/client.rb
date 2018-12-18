class Client < ApplicationRecord
  include Fae::BaseModelConcern
  validates :phone, presence: true
  validates :email,
  uniqueness: true,
  format: {
    with: Fae.validation_helpers.email_regex,
    message: 'You need use a valid and unique email'
  }

  def fae_display_field
    name
  end
  def self.for_fae_index
   order(:id)
 end


end
