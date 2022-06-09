module Types
  class CustomerType < Types::BaseObject
    field :id, ID
    field :name, String

    field :purchases, [Types::PurchaseType], resolver: Resolvers::Purchases
    field :refunds, [Types::RefundType], resolver: Resolvers::Refunds
  end
end
