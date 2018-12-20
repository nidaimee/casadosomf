class Client < ApplicationRecord
  include Fae::BaseModelConcern

  has_many :addresses, dependent: :destroy
  accepts_nested_attributes_for :addresses, reject_if: :all_blank, allow_destroy: true

  validates :phone, presence: true
  validates :email,
    uniqueness: true,
    format: {
      with: Fae.validation_helpers.email_regex,
      message: 'Você precisa validar um único e-mail'
    }
    def self.for_fae_index
     order(:id)
    end

  def fae_display_field
    name
  end
end
