class CreateSubscriptions < ActiveRecord::Migration[5.0]
  def change
    create_table :subscriptions do |t|
      t.string :title
      t.text :description
      t.string :subsimage

      t.timestamps
    end
  end
end
