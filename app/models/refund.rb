class Refund < ApplicationRecord
  belongs_to :shop
  belongs_to :purchase

  monetize :amount_cents, with_currency: true

  validates :amount_cents, :amount_currency, presence: true
end
