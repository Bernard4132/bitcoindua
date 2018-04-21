class Blog < ApplicationRecord
	resourcify
	extend FriendlyId
	mount_uploader :blogimage, BlogimageUploader
    friendly_id :title, use: :slugged
	has_many :taggings, :dependent => :destroy, :autosave => true
    has_many :tags, through: :taggings
    has_many :photos
    belongs_to :user
    default_scope -> { order('created_at DESC') }
end
