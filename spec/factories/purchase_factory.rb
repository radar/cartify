FactoryBot.define do
  factory :purchase do
    shop
    amount_cents { rand(100000) }
    amount_currency { %w(AUD USD EUR).sample }
    status { %w(Approved Rejected).sample }
    card_type { %w(visa mastercard amex).sample }

    trait :with_customer do
      customer { association(:customer, shop: instance.shop) }
    end
  end
end
