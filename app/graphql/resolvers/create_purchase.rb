module Resolvers
  class CreatePurchase < Resolvers::Base
    class Types::CreatePurchaseResult < Types::BaseUnion
      possible_types Types::PurchaseType, Types::ErrorsType

      def self.resolve_type(object, context)
        if object.valid?
          [Types::PurchaseType, object]
        else
          [Types::ErrorsType, object.errors]
        end
      end
    end

    type Types::CreatePurchaseResult, null: false

    class Types::PurchaseAttributes < Types::BaseInputObject
      argument :amount_cents, Integer
      argument :amount_currency, String
      argument :card_type, Types::PurchaseType::CardType
      argument :status, Types::PurchaseType::Status
      argument :customer_id, Integer, required: false
    end

    argument :attributes, Types::PurchaseAttributes

    def resolve(attributes:)
      object.purchases.create(attributes.to_h)
    end
  end
end
