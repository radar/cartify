class CreateRefunds < ActiveRecord::Migration[7.0]
  def change
    create_table :refunds do |t|
      t.references :shop, null: false, foreign_key: true
      t.references :purchase, null: false, foreign_key: true
      t.integer :amount_cents
      t.string :amount_currency
      t.string :status
      t.string :card_type

      t.timestamps
    end
  end
end
