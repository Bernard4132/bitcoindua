class AddRoleToMemberships < ActiveRecord::Migration[5.0]
  def change
    add_column :memberships, :role, :string
  end
end
