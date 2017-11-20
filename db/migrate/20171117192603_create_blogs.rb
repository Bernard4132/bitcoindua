class CreateBlogs < ActiveRecord::Migration[5.0]
  def change
    create_table :blogs do |t|
      t.string :title
      t.string :blogimage
      t.string :videolink
      t.text :body
      t.integer :user_id
      t.string :metadescription
      t.string :metakeywords

      t.timestamps
    end
  end
end
