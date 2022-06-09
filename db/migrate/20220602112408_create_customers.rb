class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.references :shop

      t.timestamps
    end

    add_reference :purchases, :customer
  end
end
