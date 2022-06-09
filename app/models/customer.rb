class Customer < ApplicationRecord
  belongs_to :shop
  has_many :purchases
  has_many :refunds
end
