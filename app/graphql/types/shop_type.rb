module Types
  class ShopType < Types::BaseObject
    field :name, ID

    field :purchases, [Types::PurchaseType], resolver: Resolvers::Purchases
    field :refunds, [Types::RefundType], resolver: Resolvers::Refunds
  end
end
