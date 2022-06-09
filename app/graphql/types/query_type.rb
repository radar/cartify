module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :purchases, [Types::PurchaseType], resolver: Resolvers::Purchases
    field :refunds, [Types::RefundType], resolver: Resolvers::Refunds
    field :purchase, Types::PurchaseType do
      argument :id, ID
    end

    field :customer, Types::CustomerType do
      argument :id, ID
    end

    field :shop, Types::ShopType

    def shop
      object
    end

    def purchase(id:)
      object.purchases.find(id)
    end

    def customer(id:)
      object.customers.find(id)
    end
  end
end
