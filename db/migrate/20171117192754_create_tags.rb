class CreateTags < ActiveRecord::Migration[5.0]
  def change
    create_table :tags do |t|
      t.string :name
      t.string :description
      t.string :tagimage

      t.timestamps
    end
  end
end
