FactoryBot.define do
  factory :refund do
    shop
    purchase
    amount_cents { rand(100000) }
    amount_currency { %w(AUD USD EUR).sample }
    status { %w(Approved Rejected Refunded Part-Refunded).sample }

    trait :with_customer do
      purchase { association(:purchase, :with_customer, shop: instance.shop, status: "Refunded") }
    end
  end
end
