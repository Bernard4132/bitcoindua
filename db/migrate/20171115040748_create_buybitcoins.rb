class CreateBuybitcoins < ActiveRecord::Migration[5.0]
  def change
    create_table :buybitcoins do |t|
      t.integer :amount
      t.decimal :converted, precision: 15, scale: 5
      t.string :paymentoption
      t.string :transactionid
      t.string :datetransact
      t.string :timetransact
      t.string :btcaddress
      t.string :ordernumber
      t.boolean :accept

      t.timestamps
    end
  end
end
