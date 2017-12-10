class AddBlebToBlogs < ActiveRecord::Migration[5.0]
  def change
    add_column :blogs, :bleb, :text
  end
end
