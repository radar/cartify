class Purchase < ApplicationRecord
  belongs_to :shop
  belongs_to :customer, optional: true

  has_many :refunds

  monetize :amount_cents, with_currency: true

  validates :status, :amount_cents, :amount_currency, presence: true

end
