class CreateCrytosubscriptions < ActiveRecord::Migration[5.0]
  def change
    create_table :crytosubscriptions do |t|
      t.string :email
      t.string :phone
      t.string :name

      t.timestamps
    end
  end
end
