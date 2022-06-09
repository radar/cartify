class Shop < ApplicationRecord
  has_many :purchases
  has_many :refunds
  has_many :customers
end
