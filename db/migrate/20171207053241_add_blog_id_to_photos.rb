class AddBlogIdToPhotos < ActiveRecord::Migration[5.0]
  def change
    add_column :photos, :blog_id, :integer
  end
end
