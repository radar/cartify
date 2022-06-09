module Resolvers
  class Purchases < Resolvers::Base
    type [Types::PurchaseType], null: false

    argument :status, Types::PurchaseType::Status, required: false
    argument :card_type, Types::PurchaseType::CardType, required: false

    def resolve(status: nil, card_type: nil)
      purchases = object.purchases
      purchases = purchases.where(status: status) if status
      purchases = purchases.where(card_type: card_type) if card_type
      purchases
    end
  end
end
