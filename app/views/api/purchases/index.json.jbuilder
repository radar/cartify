json.purchases @purchases do |purchase|
  json.(purchase, :id, :status, :card_type)
  json.amount purchase.amount.format
end
