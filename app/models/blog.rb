class Blog < ApplicationRecord
	extend FriendlyId
	mount_uploader :blogimage, BlogimageUploader
    friendly_id :title, use: :slugged
	has_many :taggings, :dependent => :destroy, :autosave => true
    has_many :tags, through: :taggings
    has_many :photos
end
