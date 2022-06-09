module Types
  class PurchaseType < Types::BaseObject
    class Status < Types::BaseEnum
      graphql_name "PurchaseStatus"
      value "APPROVED", value: "Approved"
      value "REJECTED", value: "Rejected"
      value "REFUNDED", value: "Refunded"
      value "PART_REFUNDED", value: "Part-Refunded"
    end

    class CardType < Types::BaseEnum
      value "VISA", value: "visa"
      value "MASTERCARD", value: "mastercard"
      value "AMEX", value: "amex"
    end

    field :id, ID
    field :formatted_amount, String
    field :amount, Integer
    field :currency, String, method: :amount_currency
    field :status, Status
    field :card_type, CardType
    field :customer, Types::CustomerType

    field :refunds, [Types::RefundType], resolver: Resolvers::Refunds

    def formatted_amount
      object.amount.format
    end
  end
end
