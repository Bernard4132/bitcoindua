class CreateEblasts < ActiveRecord::Migration[5.0]
  def change
    create_table :eblasts do |t|
      t.string :email

      t.timestamps
    end
  end
end
