class CreateSellbitcoins < ActiveRecord::Migration[5.0]
  def change
    create_table :sellbitcoins do |t|
      t.integer :amount
      t.decimal :converted, precision: 15, scale: 5
      t.string :paymentoption
      t.string :ordernumber
      t.string :mobilemoneyname
      t.string :mobilemoneynumber
      t.boolean :accept

      t.timestamps
    end
  end
end
''