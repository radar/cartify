module Types
  class RefundType < Types::BaseObject
    class Status < Types::BaseEnum
      graphql_name "RefundStatus"
      value "REFUNDED", value: "Refunded"
      value "PART_REFUNDED", value: "Part-Refunded"
    end

    field :id, ID
    field :formatted_amount, String
    field :amount, Integer
    field :currency, String, method: :amount_currency
    field :status, Status

    def formatted_amount
      object.amount.format
    end
  end
end
