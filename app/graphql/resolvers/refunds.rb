module Resolvers
  class Refunds < Resolvers::Base
    type [Types::RefundType], null: false

    argument :status, Types::RefundType::Status, required: false

    def resolve(status: nil)
      refunds = object.refunds
      refunds = refunds.where(status: status) if status
      refunds
    end
  end
end
