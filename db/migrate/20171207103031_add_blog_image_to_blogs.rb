class AddBlogImageToBlogs < ActiveRecord::Migration[5.0]
  def change
    add_column :blogs, :blog_image_id, :string
  end
end
