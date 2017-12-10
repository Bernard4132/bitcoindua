class CreateMemberships < ActiveRecord::Migration[5.0]
  def change
    create_table :memberships do |t|
      t.integer :user_id
      t.integer :subscription_id
      t.string :email

      t.timestamps
    end
  end
end
