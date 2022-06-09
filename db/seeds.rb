shop = Shop.create(name: "Ryan's shop")

50.times do
  FactoryBot.create(:purchase, shop: shop)
end

50.times do
  FactoryBot.create(:purchase, :with_customer, shop: shop)
end

50.times do
  FactoryBot.create(:refund, shop: shop)
end

50.times do
  FactoryBot.create(:refund, :with_customer, shop: shop)
end
