class AddBlogImageToPhotos < ActiveRecord::Migration[5.0]
  def change
    add_column :photos, :blog_image_id, :string
  end
end
