class Photo < ApplicationRecord
	attachment :blog_image
	belongs_to :blog
end
