class AddCardTypeToPurchases < ActiveRecord::Migration[7.0]
  def change
    add_column :purchases, :card_type, :string
  end
end
