class AddUserIdToBuybitcoins < ActiveRecord::Migration[5.0]
  def change
    add_column :buybitcoins, :user_id, :integer
  end
end
