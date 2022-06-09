class CreatePurchases < ActiveRecord::Migration[7.0]
  def change
    create_table :purchases do |t|
      t.references :shop, null: false, foreign_key: true
      t.integer :amount_cents
      t.string :amount_currency
      t.string :status

      t.timestamps
    end
  end
end
