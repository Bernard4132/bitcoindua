class Tag < ApplicationRecord
	mount_uploader :tagimage, TagimageUploader
	has_many :taggings, :dependent => :destroy, :autosave => true
    has_many :blogs, through: :taggings
end
