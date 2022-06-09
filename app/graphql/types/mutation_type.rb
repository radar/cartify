module Types
  class MutationType < Types::BaseObject
    field :create_purchase, resolver: Resolvers::CreatePurchase
  end
end
